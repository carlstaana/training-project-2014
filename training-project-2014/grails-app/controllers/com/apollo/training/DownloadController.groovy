package com.apollo.training

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile
import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
@Transactional(readOnly = true)
class DownloadController {

	static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)

		def downloadslist = Download.createCriteria().list(params){
			if(params.query){
				ilike("fileName","%${params.query}%")
			}
		}
		[downloadInstanceList : downloadslist, downloadInstanceCount : downloadslist.totalCount]
	}

	def show(Download downloadInstance) {
		respond downloadInstance
	}

	def create() {
		respond new Download(params)
	}

	def createMultiple(){
		respond new Download(params)
	}
	
	def springSecurityService
	
	@Transactional
	def save(Download downloadInstance) {
		if (downloadInstance == null) {
			notFound()
			return
		}

		if (downloadInstance.hasErrors()) {
			respond downloadInstance.errors, view:'create'
			return
		}

		def uploadedFile = request.getFile('file')
		downloadInstance.fileType = uploadedFile.contentType
		
		
		if(downloadInstance.fileType.equals("text/csv")){
			String s = new String(downloadInstance.file)
			String[] rows = s.split("\n")
			boolean valid = true
			def role = springSecurityService.getPrincipal().getAuthorities()
			def userCompany = springSecurityService.currentUser.company
			for(int i = 1; i < rows.length ; i++){
				def column = rows[i].split(",")
				Product.withTransaction{
					try{
						def product = new Product(column,role,userCompany)
						product.save flush:true
					}catch(Exception e){
						flash.error=e.getMessage()
						valid=false
						return
					}					
				}
			}
			if(!valid){
				redirect action:'create'
			}else{
				flash.message="a group of products has been uploaded."
				redirect controller:'product',action:'index'
			}
			return
		}else if(downloadInstance.fileType.equals("text/plain")){
		
			downloadInstance.fileName = uploadedFile.originalFilename
			String path = new String(servletContext.getRealPath("/")+"files/"+downloadInstance.fileName)
			def file = new File(path)
			if(!file.exists() && !file.isDirectory()){
				try{
					file.createNewFile()
				}catch(Exception e){
					flash.message = "cannot create file"
				}
			}else{
				flash.error = "A file with the same name exists, please rename your file."
				redirect action:'create'
				return
			}
			uploadedFile.transferTo(file)
			downloadInstance.filePath = path
			downloadInstance.save flush:true
	
			request.withFormat {
				form multipartForm {
					flash.message = message(code: 'default.created.message', args: [
						message(code: 'download.label', default: 'Download'),
						downloadInstance.id
					])
					redirect (action:'index')
				}
				'*' { respond downloadInstance, [status: CREATED] }
			}
			return
		}else{
			flash.message = "Invalid file format. Please upload a text file or a csv file."
			return
		}
	}

	def edit(Download downloadInstance) {
		respond downloadInstance
	}

	@Transactional
	def update(Download downloadInstance) {
		if (downloadInstance == null) {
			notFound()
			return
		}

		if (downloadInstance.hasErrors()) {
			respond downloadInstance.errors, view:'edit'
			return
		}

		def uploadedFile = request.getFile('file')

		String path = new String(servletContext.getRealPath("/")+"files/"+downloadInstance.fileName)
		def file = new File(path)
		if(file.exists() && !file.isDirectory()){
			try{
				file.delete()
			}catch(Exception e){
				flash.messge = "cannot delete file"
			}
		}else{
			file.createNewFile()
		}

		downloadInstance.fileType = uploadedFile.contentType
		downloadInstance.fileName = uploadedFile.originalFilename

		path = new String(servletContext.getRealPath("/")+"files/"+downloadInstance.fileName)
		file = new File(path)

		uploadedFile.transferTo(file)
		downloadInstance.filePath = path

		downloadInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Download.label', default: 'Download'),
					downloadInstance.id
				])
				redirect (action:'index')
			}
			'*'{ respond downloadInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Download downloadInstance) {

		if (downloadInstance == null) {
			notFound()
			return
		}

		def file = new File(downloadInstance.filePath)
		if(file.exists()){
			file.delete()
		}
		downloadInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Download.label', default: 'Download'),
					downloadInstance.id
				])
				redirect (action:'index')
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'download.label', default: 'Download'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}

	def download(Download downloadInstance){
		if(downloadInstance == null){
			flash.message = "File not found"
			redirect (action:'show', id:downloadInstance.id)
		}else{
			response.setContentType("APPLICATION/OCTET-STREAM")
			response.setHeader("Content-Disposition", "Attachment;Filename=\"${downloadInstance.fileName}\"")

			def file = new File(downloadInstance.filePath)
			if( file.exists() ){
				def fileInputStream = new FileInputStream(file)
				def outputStream = response.getOutputStream()

				byte[] buffer = new byte[4096];
				int len;
				while ((len = fileInputStream.read(buffer)) > 0) {
					outputStream.write(buffer, 0, len);
				}

				outputStream.flush()
				outputStream.close()
				fileInputStream.close()
			}else{
				flash.message = "Cannot download file. File is missing from the system."
				redirect( action:'show', id:downloadInstance.id)
			}
		}
	}
}
