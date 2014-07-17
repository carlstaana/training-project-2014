package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Secured(['IS_AUTHENTICATED_FULLY'])
@Transactional(readOnly = true)
class ArticleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]
	def CustomJasperService
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        //respond Article.list(params), model:[articleInstanceCount: Article.count()]
		
		/**
		 * searching Articles
		 */
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
		def ArticleList = Article.createCriteria().list(params) {
			if(params.query == null){
				respond Article.list(params), model:[articleInstanceCount: Article.count()]
			}
			or {
			   ilike("title", "%${params.query}%")
			   ilike("author", "%${params.query}%")
			   ilike("newsType", "%${params.query}%")
		   }
	   }
	   [articleInstanceList: ArticleList, ArticleInstanceTotal: ArticleList.totalCount]
    }

    def show(Article articleInstance) {
        respond articleInstance
    }
	
	@Secured(['ROLE_ADMIN'])
    def create() {
        respond new Article(params)
    }

	@Secured(['ROLE_ADMIN'])
    @Transactional
    def save(Article articleInstance) {
        if (articleInstance == null) {
            notFound()
            return
        }

        if (articleInstance.hasErrors()) {
            respond articleInstance.errors, view:'create'
            return
        }

        articleInstance.save flush:true
		
		//file upload to stated directory
		def f = request.getFile('imageFile')
		if (f.empty) {
			flash.message = 'file cannot be empty'
			render(view: 'uploadForm')
			return
		}
		
		int id2 = articleInstance.id
		String url = "/reports/image_"+id2+".jpg"
		f.transferTo(new File(servletContext.getRealPath("/")+url))

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'article.label', default: 'Article'), articleInstance.id])
                redirect articleInstance
            }
            '*' { respond articleInstance, [status: CREATED] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    def edit(Article articleInstance) {
        respond articleInstance
    }

	@Secured(['ROLE_ADMIN'])
    @Transactional
    def update(Article articleInstance) {
        if (articleInstance == null) {
            notFound()
            return
        }

        if (articleInstance.hasErrors()) {
            respond articleInstance.errors, view:'edit'
            return
        }

        articleInstance.save flush:true
		
		//file
		def f = request.getFile('imageFile')
		if (f.empty) {
			flash.message = 'file cannot be empty'
			render(view: 'uploadForm')
			return
		}
		int id2 = articleInstance.id
		String url = "/reports/image_"+id2+".jpg"
		f.transferTo(new File(servletContext.getRealPath("/")+url))
		

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Article.label', default: 'Article'), articleInstance.id])
                redirect articleInstance
            }
            '*'{ respond articleInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(Article articleInstance) {

        if (articleInstance == null) {
            notFound()
            return
        }

        articleInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Article.label', default: 'Article'), articleInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

	def showFile() {
		def fileInstance = Article.get(params.id)
		response.outputStream << fileInstance.imageFile // write the image to the outputstream
		response.outputStream.flush()
	}
	
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

	/**
	 * controller the report generated
	 */
	@Secured(['ROLE_ADMIN'])
	def downloadStatementOfAccount(){
		def articleInstance = Article.get(params.id)
		def params = [:]
		def reportPath = servletContext.getRealPath("/")
		params.REPORT_DIR = reportPath
		
		//use the article report format which is the jrxml
		params._file = "reports/article_report"//jrxml
		params.format = 'PDF'
		
		String url = "reports/image_"+articleInstance.id+".jpg"
		//set parameters to the jasper report
		params.Image = servletContext.getRealPath("/")+url
		params.Title = articleInstance?.title
		params.Author = articleInstance?.author
		params.Publication = articleInstance?.publicationString()
		params.Story = articleInstance?.storyString()
		params.NewsType = articleInstance?.newsType
		response.setContentType("pdf")
		//set filename
		response.setHeader("Content-disposition", "attachment; filename=\"" +"Article (pdf)" + "\"");
		response.outputStream << customJasperService.generateReport(reportPath, null, params).toByteArray()
	
	}
}
