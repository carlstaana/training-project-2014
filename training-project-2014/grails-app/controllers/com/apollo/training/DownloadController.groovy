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
			for(int i = 1; i < rows.length ; i++){
				def column = rows[i].split(",")
				
				def product = new Product()
				product.company = column[0].trim()
				product.subCompany = column[1].trim()
				product.GLN = Integer.valueOf(column[2].trim())
				product.prefix = Integer.valueOf(column[3].trim())
				product.GTIN = Integer.valueOf(column[4].trim())
				product.brand = column[5].trim()
				product.BFADRegistrationNumber = column[6].trim()
				product.shortName = column[7].trim()
				product.description = column[8].trim()
				product.netContent = Float.valueOf(column[9].trim())
				product.packageType = column[10].trim()
				product.stackingHeight = Integer.valueOf(column[11].trim())
				product.unitOfMeasureStackingHeight = column[12].trim()
				product.noOfLayersPerPallet = Float.valueOf(column[13].trim())
				product.netWeight = Integer.valueOf(column[14].trim())
				product.unitOfMeasureNetWeight = column[15].trim()
				product.tradeItemLength = Integer.valueOf(column[16].trim())
				product.unitOfMeasureLength = column[17].trim()
				product.tradeItemWidth = Integer.valueOf(column[18].trim())
				product.unitOfMeasureWidth = column[19].trim()
				product.tradeItemHeight = Integer.valueOf(column[20].trim())
				product.unitOfMeasureHeight = column[21].trim()
				product.handling = column[22].trim()
				product.storage = column[23].trim()
				product.startDate = new Date().parse("yyyy-MM-dd",column[24].trim())
				product.endDate = new Date().parse("yyyy-MM-dd",column[25].trim())
				product.minimumOrderQuantity = Integer.valueOf(column[26].trim())
				product.unitOfMeasureOrderUnit = column[27].trim()
				for(View value: View.values()){
					if(value.toString().equals(column[28].trim())){
						product.view = value
					}
				}
				product.productCategory = ProductCategory.findByName(column[29].trim())
				product.status = "added"
				
				product.save flush:true
				
				redirect (controller:'Product', action:'index')
				return	
			}
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
				flash.message = "a file with the same name exists, please rename your file"
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
