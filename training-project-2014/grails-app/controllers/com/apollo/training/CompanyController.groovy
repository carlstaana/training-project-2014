package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompanyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
		if(!params.searchable){
			flash.message = ""
			[ searchCategory:"",
				searchKeyword:"",
				companyInstanceList: Company.list(params),
				companyInstanceTotal: Company.count()]
		}else{
			
				def companies =  Company.findAllByCompanyNameLikeAndStatusLike("%${params.searchable}%", "%${params.searchCategory}%", params)
				[   searchCategory:params.searchCategory,
					searchKeyword: params.searchable ,
					companyInstanceList: companies ,
					companyInstanceTotal: Company.count()]
		}
    }
	
	@Transactional
	def reactivate(Company companyInstance){
		if (companyInstance == null) {
			notFound()
			return
		}

		if (companyInstance.hasErrors()) {
			respond companyInstance.errors, view:'edit'
			return
		}

		companyInstance.status = "ADDED"

		companyInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Company.label', default: 'Company'),
					companyInstance.id
				])
				redirect companyInstance
			}
			'*'{ respond companyInstance, [status: OK] }
		}
	}

	@Transactional
	def cancel(Company companyInstance){
		if (companyInstance == null) {
			notFound()
			return
		}

		if (companyInstance.hasErrors()) {
			respond companyInstance.errors, view:'edit'
			return
		}

		companyInstance.status = "CANCELLED"

		companyInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Company.label', default: 'Company'),
					companyInstance.id
				])
				redirect companyInstance
			}
			'*'{ respond companyInstance, [status: OK] }
		}
	}

	@Transactional
	def reject(Company companyInstance){
		if (companyInstance == null) {
			notFound()
			return
		}

		if (companyInstance.hasErrors()) {
			respond companyInstance.errors, view:'edit'
			return
		}

		companyInstance.status = "REJECTED"

		companyInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Company.label', default: 'Company'),
					companyInstance.id
				])
				redirect companyInstance
			}
			'*'{ respond companyInstance, [status: OK] }
		}
	}

	@Transactional
	def approve(Company companyInstance){
		if (companyInstance == null) {
			notFound()
			return
		}

		if (companyInstance.hasErrors()) {
			respond companyInstance.errors, view:'edit'
			return
		}

		companyInstance.status = "APPROVED"

		companyInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Company.label', default: 'Company'),
					CompanyInstance.id
				])
				redirect companyInstance
			}
			'*'{ respond companyInstance, [status: OK] }
		}
	}

    def show(Company companyInstance) {
        respond companyInstance
    }

    def create() {
        respond new Company(params)
    }

    @Transactional
    def save(Company companyInstance) {
        if (companyInstance == null) {
            notFound()
            return
        }

        if (companyInstance.hasErrors()) {
            respond companyInstance.errors, view:'create'
            return
        }

        companyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'company.label', default: 'Company'), companyInstance.id])
                redirect companyInstance
            }
            '*' { respond companyInstance, [status: CREATED] }
        }
    }

    def edit(Company companyInstance) {
        respond companyInstance
    }

    @Transactional
    def update(Company companyInstance) {
        if (companyInstance == null) {
            notFound()
            return
        }

        if (companyInstance.hasErrors()) {
            respond companyInstance.errors, view:'edit'
            return
        }

        companyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Company.label', default: 'Company'), companyInstance.id])
                redirect companyInstance
            }
            '*'{ respond companyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Company companyInstance) {

        if (companyInstance == null) {
            notFound()
            return
        }

        companyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Company.label', default: 'Company'), companyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'Company'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
