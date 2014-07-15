package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProductType.list(params), model:[productTypeInstanceCount: ProductType.count()]
    }
	
    def show(ProductType productTypeInstance) {
        respond productTypeInstance
    }

    def create() {
        respond new ProductType(params)
    }

    @Transactional
    def save(ProductType productTypeInstance) {
        if (productTypeInstance == null) {
            notFound()
            return
        }

        if (productTypeInstance.hasErrors()) {
            respond productTypeInstance.errors, view:'create'
            return
        }

        productTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productType.label', default: 'Product Type: '), productTypeInstance.name])
                redirect productTypeInstance
            }
            '*' { respond productTypeInstance, [status: CREATED] }
        }
    }

    def edit(ProductType productTypeInstance) {
        respond productTypeInstance
    }

    @Transactional
    def update(ProductType productTypeInstance) {
        if (productTypeInstance == null) {
            notFound()
            return
        }

        if (productTypeInstance.hasErrors()) {
            respond productTypeInstance.errors, view:'edit'
            return
        }

        productTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProductType.label', default: 'Product Type: '), productTypeInstance.name])
                redirect productTypeInstance
            }
            '*'{ respond productTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductType productTypeInstance) {

        if (productTypeInstance == null) {
            notFound()
            return
        }

        productTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProductType.label', default: 'Product Type: '), productTypeInstance.name])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productType.label', default: 'Product Type: '), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
