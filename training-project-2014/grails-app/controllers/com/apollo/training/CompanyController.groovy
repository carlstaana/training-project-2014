package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class CompanyController {

	static allowedMethods = [save: "POST", update: "PUT", delete: ["POST", "DELETE"]]
	def springSecurityService

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)

		def role = springSecurityService.getPrincipal().getAuthorities()

		if(!params.searchable){
			if(params.searchCategory.equals("ALL") || params.searchCategory == null){
				if(role.toString().equals("[ROLE_USER]")){
					def companies = Company.findAllByViewNotEqual(View.RESTRICTED)
					[ searchCategory:params.searchCategory,
						searchKeyword:params.searchable,
						companyInstanceList: companies,
						companyInstanceTotal: Company.count()]
				}
				else{
					[ searchCategory:params.searchCategory,
						searchKeyword:params.searchable,
						companyInstanceList: Company.list(params),
						companyInstanceTotal: Company.count()]
				}
			}
			else{
				if(role.toString().equals("[ROLE_USER]")){
					def companies = Company.findAllByStatusAndViewNotEqual(params.searchCategory, View.RESTRICTED)
					[ searchCategory:params.searchCategory,
						searchKeyword:params.searchable,
						companyInstanceList: companies,
						companyInstanceTotal: Company.count()]
				}
				else{
					def companies = Company.findWhere(status:params.searchCategory)
					[ searchCategory:params.searchCategory,
						searchKeyword:params.searchable,
						companyInstanceList: companies,
						companyInstanceTotal: Company.count()]
				}
			}
		}else{
			if(role.toString().equals("[ROLE_USER]")){
				if(params.searchCategory.equals("ALL") || params.searchCategory == null){
					def companies =  Company.findAllByCompanyNameLikeAndViewLike("%${params.searchable}%", View.MEMBER, params)
					[   searchCategory:params.searchCategory,
						searchKeyword: params.searchable ,
						companyInstanceList: companies ,
						companyInstanceTotal: Company.count()]
				}
				else{
					def companies =  Company.findAllByCompanyNameLikeAndStatusLikeAndViewLike("%${params.searchable}%", "%${params.searchCategory}%", View.MEMBER, params)
					[   searchCategory:params.searchCategory,
						searchKeyword: params.searchable ,
						companyInstanceList: companies ,
						companyInstanceTotal: Company.count()]
				}
			}
			else{
				if(params.searchCategory.equals("ALL") || params.searchCategory == null){
					def companies =  Company.findAllByCompanyNameLike("%${params.searchable}%", params)
					[   searchCategory:params.searchCategory,
						searchKeyword: params.searchable ,
						companyInstanceList: companies ,
						companyInstanceTotal: Company.count()]
				} else{
					def companies =  Company.findAllByCompanyNameLikeAndStatusLike("%${params.searchable}%", "%${params.searchCategory}%", params)
					[   searchCategory:params.searchCategory,
						searchKeyword: params.searchable ,
						companyInstanceList: companies ,
						companyInstanceTotal: Company.count()]
				}
			}
		}
	}

	@Secured(['ROLE_ADMIN'])
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

		companyInstance.status = "EDITED"

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

	@Secured(['ROLE_ADMIN'])
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

	@Secured(['ROLE_ADMIN'])
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

	@Secured(['ROLE_ADMIN'])
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
					companyInstance.id
				])
				redirect companyInstance
			}
			'*'{ respond companyInstance, [status: OK] }
		}
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def show(Company companyInstance) {
		respond companyInstance
	}

	@Secured(['ROLE_ADMIN'])
	def create() {
		respond new Company(params)
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
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
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'company.label', default: 'Company'),
					companyInstance.id
				])
				redirect companyInstance
			}
			'*' { respond companyInstance, [status: CREATED] }
		}
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def edit(Company companyInstance) {
		respond companyInstance
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
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
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Company.label', default: 'Company'),
					companyInstance.id
				])
				redirect companyInstance
			}
			'*'{ respond companyInstance, [status: OK] }
		}
	}

	@Secured(['ROLE_ADMIN'])
	@Transactional
	def delete(Company companyInstance) {

		if (companyInstance == null) {
			notFound()
			return
		}

		companyInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Company.label', default: 'Company'),
					companyInstance.id
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
					message(code: 'company.label', default: 'Company'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
