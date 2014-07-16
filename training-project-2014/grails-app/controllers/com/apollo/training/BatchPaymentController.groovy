package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BatchPaymentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BatchPayment.list(params), model:[batchPaymentInstanceCount: BatchPayment.count()]
    }

    def show(BatchPayment batchPaymentInstance) {
        respond batchPaymentInstance
    }

    def create() {
        respond new BatchPayment(params)
    }

    @Transactional
    def save(BatchPayment batchPaymentInstance) {
        if (batchPaymentInstance == null) {
            notFound()
            return
        }

        if (batchPaymentInstance.hasErrors()) {
            respond batchPaymentInstance.errors, view:'create'
            return
        }

        batchPaymentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'batchPayment.label', default: 'BatchPayment'), batchPaymentInstance.id])
                redirect batchPaymentInstance
            }
            '*' { respond batchPaymentInstance, [status: CREATED] }
        }
    }

    def edit(BatchPayment batchPaymentInstance) {
        respond batchPaymentInstance
    }

    @Transactional
    def update(BatchPayment batchPaymentInstance) {
        if (batchPaymentInstance == null) {
            notFound()
            return
        }

        if (batchPaymentInstance.hasErrors()) {
            respond batchPaymentInstance.errors, view:'edit'
            return
        }

        batchPaymentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BatchPayment.label', default: 'BatchPayment'), batchPaymentInstance.id])
                redirect batchPaymentInstance
            }
            '*'{ respond batchPaymentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BatchPayment batchPaymentInstance) {

        if (batchPaymentInstance == null) {
            notFound()
            return
        }

        batchPaymentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BatchPayment.label', default: 'BatchPayment'), batchPaymentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'batchPayment.label', default: 'BatchPayment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
