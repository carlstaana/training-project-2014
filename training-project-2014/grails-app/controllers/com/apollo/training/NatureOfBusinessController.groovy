package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class NatureOfBusinessController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond NatureOfBusiness.list(params), model:[natureOfBusinessInstanceCount: NatureOfBusiness.count()]
    }

    def show(NatureOfBusiness natureOfBusinessInstance) {
        respond natureOfBusinessInstance
    }

    def create() {
        respond new NatureOfBusiness(params)
    }

    @Transactional
    def save(NatureOfBusiness natureOfBusinessInstance) {
        if (natureOfBusinessInstance == null) {
            notFound()
            return
        }

        if (natureOfBusinessInstance.hasErrors()) {
            respond natureOfBusinessInstance.errors, view:'create'
            return
        }

        natureOfBusinessInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'natureOfBusiness.label', default: 'Nature of Business: '), natureOfBusinessInstance.name])
                redirect natureOfBusinessInstance
            }
            '*' { respond natureOfBusinessInstance, [status: CREATED] }
        }
    }

    def edit(NatureOfBusiness natureOfBusinessInstance) {
        respond natureOfBusinessInstance
    }

    @Transactional
    def update(NatureOfBusiness natureOfBusinessInstance) {
        if (natureOfBusinessInstance == null) {
            notFound()
            return
        }

        if (natureOfBusinessInstance.hasErrors()) {
            respond natureOfBusinessInstance.errors, view:'edit'
            return
        }

        natureOfBusinessInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'NatureOfBusiness.label', default: 'Nature of Business: '), natureOfBusinessInstance.name])
                redirect natureOfBusinessInstance
            }
            '*'{ respond natureOfBusinessInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(NatureOfBusiness natureOfBusinessInstance) {

        if (natureOfBusinessInstance == null) {
            notFound()
            return
        }

        natureOfBusinessInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'NatureOfBusiness.label', default: 'Nature of Business: '), natureOfBusinessInstance.name])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'natureOfBusiness.label', default: 'Nature of Business: '), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
