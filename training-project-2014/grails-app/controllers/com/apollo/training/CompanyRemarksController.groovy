package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompanyRemarksController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CompanyRemarks.list(params), model:[companyRemarksInstanceCount: CompanyRemarks.count()]
    }

    def show(CompanyRemarks companyRemarksInstance) {
        respond companyRemarksInstance
    }

    def create() {
        respond new CompanyRemarks(params)
    }

    @Transactional
    def save(CompanyRemarks companyRemarksInstance) {
        if (companyRemarksInstance == null) {
            notFound()
            return
        }

        if (companyRemarksInstance.hasErrors()) {
            respond companyRemarksInstance.errors, view:'create'
            return
        }
		
        companyRemarksInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'companyRemarks.label', default: 'CompanyRemarks'), companyRemarksInstance.id])
                redirect controller: "Company", action: "show", id: companyRemarksInstance.company.id
            }
            '*' { respond companyRemarksInstance, [status: CREATED] }
        }
    }

    def edit(CompanyRemarks companyRemarksInstance) {
        respond companyRemarksInstance
    }

    @Transactional
    def update(CompanyRemarks companyRemarksInstance) {
        if (companyRemarksInstance == null) {
            notFound()
            return
        }

        if (companyRemarksInstance.hasErrors()) {
            respond companyRemarksInstance.errors, view:'edit'
            return
        }

        companyRemarksInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CompanyRemarks.label', default: 'CompanyRemarks'), companyRemarksInstance.id])
                redirect controller: "Company", action: "show", id: companyRemarksInstance.company.id
            }
            '*'{ respond companyRemarksInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CompanyRemarks companyRemarksInstance) {

        if (companyRemarksInstance == null) {
            notFound()
            return
        }

        companyRemarksInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CompanyRemarks.label', default: 'CompanyRemarks'), companyRemarksInstance.id])
                redirect controller: "Company", action: "show", id: companyRemarksInstance.company.id
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyRemarks.label', default: 'CompanyRemarks'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
