package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompanyPaymentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CompanyPayment.list(params), model:[companyPaymentInstanceCount: CompanyPayment.count()]
    }

    def show(CompanyPayment companyPaymentInstance) {
        respond companyPaymentInstance
    }

    def create() {
        respond new CompanyPayment(params)
    }

    @Transactional
    def save(CompanyPayment companyPaymentInstance) {
        if (companyPaymentInstance == null) {
            notFound()
            return
        }

        if (companyPaymentInstance.hasErrors()) {
            respond companyPaymentInstance.errors, view:'create'
            return
        }

        companyPaymentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'companyPayment.label', default: 'CompanyPayment'), companyPaymentInstance.id])
                 redirect controller: "Company", action: "show", id: companyPaymentInstance.company.id
            }
            '*' { respond companyPaymentInstance, [status: CREATED] }
        }
    }

    def edit(CompanyPayment companyPaymentInstance) {
        respond companyPaymentInstance
    }

    @Transactional
    def update(CompanyPayment companyPaymentInstance) {
        if (companyPaymentInstance == null) {
            notFound()
            return
        }

        if (companyPaymentInstance.hasErrors()) {
            respond companyPaymentInstance.errors, view:'edit'
            return
        }

        companyPaymentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CompanyPayment.label', default: 'CompanyPayment'), companyPaymentInstance.id])
                redirect controller: "Company", action: "show", id: companyPaymentInstance.company.id
            }
            '*'{ respond companyPaymentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CompanyPayment companyPaymentInstance) {

        if (companyPaymentInstance == null) {
            notFound()
            return
        }

        companyPaymentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CompanyPayment.label', default: 'CompanyPayment'), companyPaymentInstance.id])
                redirect controller: "Company", action: "show", id: companyPaymentInstance.company.id
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'companyPayment.label', default: 'CompanyPayment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
