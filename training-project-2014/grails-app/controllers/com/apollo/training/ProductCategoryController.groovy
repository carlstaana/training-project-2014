package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class ProductCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index = { redirect(action:list,params:params) }
	
	def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ productCategoryInstanceList: ProductCategory.list( params ), productCategoryInstanceTotal: ProductCategory.count() ]
    }

    def show() {
       def productCategoryInstance = ProductCategory.get( params.id )

        if(!productCategoryInstance) {
            flash.message = "Product Category not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ productCategoryInstance : productCategoryInstance ] }
    }

    def create() {
        respond new ProductCategory(params)
    }

    @Transactional
    def save(ProductCategory productCategoryInstance) {
        if (productCategoryInstance == null) {
            notFound()
            return
        }

        if (productCategoryInstance.hasErrors()) {
            respond productCategoryInstance.errors, view:'create'
            return
        }
		
		if(productCategoryInstance.subCategories.size() <= 0){
			flash.message = "Product category must contain atleast one sub-category"
			respond productCategoryInstance.errors, view:'create'
			return
		}
		
		def _toBeRemoved = productCategoryInstance.subCategories.findAll {!it}
		
		if (_toBeRemoved) {
			productCategoryInstance.subCategories.removeAll(_toBeRemoved)
		 }
		
		//update my indexes
		productCategoryInstance.subCategories.eachWithIndex(){phn, i ->
			if(phn)
				phn.index = i
		}

        productCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productCategory.label', default: 'ProductCategory'), productCategoryInstance.id])
                redirect productCategoryInstance
            }
            '*' { respond productCategoryInstance, [status: CREATED] }
        }
    }

    def edit(ProductCategory productCategoryInstance) {
        respond productCategoryInstance
    }

    @Transactional
    def update(ProductCategory productCategoryInstance) {
        if (productCategoryInstance == null) {
            notFound()
            return
        }

        if (productCategoryInstance.hasErrors()) {
            respond productCategoryInstance.errors, view:'edit'
            return
        }
		
		def _toBeDeleted = productCategoryInstance.subCategories.findAll {it?.deleted || it == null}
		
		if (_toBeDeleted) {
			productCategoryInstance.subCategories.removeAll(_toBeDeleted)
		}
		
		
		//update my indexes
		productCategoryInstance.subCategories.eachWithIndex(){phn, i ->
			if(phn)
				phn.index = i
		}

        productCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProductCategory.label', default: 'ProductCategory'), productCategoryInstance.id])
                redirect productCategoryInstance
            }
            '*'{ respond productCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductCategory productCategoryInstance) {

        if (productCategoryInstance == null) {
            notFound()
            return
        }

		for(def productList : Product.list()){
			if(productList.productCategory.toString().equalsIgnoreCase(productCategoryInstance.name.toString())){
				flash.message = message(code: 'Cannot be deleted!')
				respond productCategoryInstance.errors, view:'show'
				return
			}
		}
		
        productCategoryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProductCategory.label', default: 'ProductCategory'), productCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productCategory.label', default: 'ProductCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
