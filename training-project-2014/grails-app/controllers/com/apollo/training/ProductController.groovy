package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductController {

	static allowedMethods = [save: "POST", update: "PUT", delete: ["POST", "DELETE"]]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)

		if(!params.searchable){
			flash.message = ""
			[ searchCategory:"",
				searchKeyword:"",
				productInstanceList: Product.list(params),
				productInstanceTotal: Product.count()]
		}else{
			
				def products =  Product.findAllByCompanyLikeAndStatusLike("%${params.searchable}%", "%${params.searchCategory}%", params)
				[   searchCategory:params.searchCategory,
					searchKeyword: params.searchable ,
					productInstanceList: products ,
					productInstanceTotal: Product.count()]
		}
	}

	@Transactional
	def reactivate(Product productInstance){
		if (productInstance == null) {
			notFound()
			return
		}

		if (productInstance.hasErrors()) {
			respond productInstance.errors, view:'edit'
			return
		}

		productInstance.status = "ADDED"

		productInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Product.label', default: 'Product'),
					productInstance.id
				])
				redirect productInstance
			}
			'*'{ respond productInstance, [status: OK] }
		}
	}

	@Transactional
	def cancel(Product productInstance){
		if (productInstance == null) {
			notFound()
			return
		}

		if (productInstance.hasErrors()) {
			respond productInstance.errors, view:'edit'
			return
		}

		productInstance.status = "CANCELLED"

		productInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Product.label', default: 'Product'),
					productInstance.id
				])
				redirect productInstance
			}
			'*'{ respond productInstance, [status: OK] }
		}
	}

	@Transactional
	def reject(Product productInstance){
		if (productInstance == null) {
			notFound()
			return
		}

		if (productInstance.hasErrors()) {
			respond productInstance.errors, view:'edit'
			return
		}

		productInstance.status = "REJECTED"

		productInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Product.label', default: 'Product'),
					productInstance.id
				])
				redirect productInstance
			}
			'*'{ respond productInstance, [status: OK] }
		}
	}

	@Transactional
	def approve(Product productInstance){
		if (productInstance == null) {
			notFound()
			return
		}

		if (productInstance.hasErrors()) {
			respond productInstance.errors, view:'edit'
			return
		}

		productInstance.status = "APPROVED"

		productInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Product.label', default: 'Product'),
					productInstance.id
				])
				redirect productInstance
			}
			'*'{ respond productInstance, [status: OK] }
		}
	}

	def show(Product productInstance) {
		respond productInstance
	}

	def create() {
		respond new Product(params)
	}

	@Transactional
	def save(Product productInstance) {
		if (productInstance == null) {
			notFound()
			return
		}

		if (productInstance.hasErrors()) {
			respond productInstance.errors, view:'create'
			return
		}

		productInstance.status = productInstance.status?: "ADDED"

		productInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'product.label', default: 'Product'),
					productInstance.id
				])
				redirect productInstance
			}
			'*' { respond productInstance, [status: CREATED] }
		}
	}

	def edit(Product productInstance) {
		respond productInstance
	}

	@Transactional
	def update(Product productInstance) {
		if (productInstance == null) {
			notFound()
			return
		}

		if (productInstance.hasErrors()) {
			respond productInstance.errors, view:'edit'
			return
		}

		productInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Product.label', default: 'Product'),
					productInstance.id
				])
				redirect productInstance
			}
			'*'{ respond productInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Product productInstance) {

		if (productInstance == null) {
			notFound()
			return
		}
		
		for(def companyList : Company.list()){
			if(companyList.products.toString().equalsIgnoreCase(productInstance.brand.toString())){
				flash.message = message(code: 'Cannot be deleted!')
				respond productInstance.errors, view:'show'
				return
			}
		}

		productInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Product.label', default: 'Product'),
					productInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'product.label', default: 'Product'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
