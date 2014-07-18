package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class ProductController {

	def springSecurityService
	
	static allowedMethods = [save: "POST", update: "PUT", delete: ["POST", "DELETE"]]
	@Secured(['IS_AUTHENTICATED_FULLY'])
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)

		if(!params.searchable){
			if(params.searchCategory.equals("ALL") || params.searchCategory == null){
				[ searchCategory:params.searchCategory,
					searchKeyword:params.searchable,
					productInstanceList: Product.list(params),
					productInstanceTotal: Product.count()]
			}
			else{
				def products = Product.findWhere(status:params.searchCategory)
				[ searchCategory:params.searchCategory,
					searchKeyword:params.searchable,
					productInstanceList: products,
					productInstanceTotal: Product.count()]
			}
		}else{

			def products =  Product.findAllByCompanyLikeAndStatusLike("%${params.searchable}%", "%${params.searchCategory}%", params)
			[   searchCategory:params.searchCategory,
				searchKeyword: params.searchable,
				productInstanceList: products ,
				productInstanceTotal: Product.count()]
		}
	}
	
	@Secured(['ROLE_ADMIN'])
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

	@Secured(['ROLE_ADMIN'])
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

	@Secured(['ROLE_ADMIN'])
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

	@Secured(['ROLE_ADMIN'])
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
	
	@Secured(['IS_AUTHENTICATED_FULLY'])
	def show(Product productInstance) {
		respond productInstance
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def create() {
		def user = springSecurityService.currentUser.company
		[user: user]
		respond new Product(params)
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
	@Transactional
	def save(Product productInstance) {
		def user = springSecurityService.currentUser.company
		if (productInstance == null) {
			notFound()
			return
		}

		if (productInstance.hasErrors()) {
			respond productInstance.errors, view:'create'
			return
		}
		
		productInstance.company = Company.findByCompanyName(user)
		println productInstance.company

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

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def edit(Product productInstance) {
		respond productInstance
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
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

	@Secured(['IS_AUTHENTICATED_FULLY'])
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

	@Secured(['IS_AUTHENTICATED_FULLY'])
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
