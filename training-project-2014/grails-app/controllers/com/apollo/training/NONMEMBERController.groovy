package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
@Transactional(readOnly = true)
class NONMEMBERController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		//respond NONMEMBER.list(params), model:[NONMEMBERInstanceCount: NONMEMBER.count()]

		params.max = Math.min(params.max ? params.int('max') : 5, 100)
		def NONMEMBERList = NONMEMBER.createCriteria().list(params) {
			if(params.query == null){
				respond NONMEMBER.list(params), model:[NONMEMBERInstanceCount: NONMEMBER.count()]
			}
			or {
				ilike("name", "%${params.query}%")
				//ilike("gln", "%${params.query}%")
			}
		}
		[NONMEMBERInstanceList: NONMEMBERList, NONMEMBERInstanceTotal: NONMEMBERList.totalCount]
	}

	def show(NONMEMBER NONMEMBERInstance) {
		respond NONMEMBERInstance
	}

	def create() {
		respond new NONMEMBER(params)
	}

	@Transactional
	def save(NONMEMBER NONMEMBERInstance) {
		if (NONMEMBERInstance == null) {
			notFound()
			return
		}

		if (NONMEMBERInstance.hasErrors()) {
			respond NONMEMBERInstance.errors, view:'create'
			return
		}

		NONMEMBERInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'NONMEMBER.label', default: 'NONMEMBER'),
					NONMEMBERInstance.id
				])
				redirect NONMEMBERInstance
			}
			'*' { respond NONMEMBERInstance, [status: CREATED] }
		}
	}

	def edit(NONMEMBER NONMEMBERInstance) {
		respond NONMEMBERInstance
	}

	@Transactional
	def update(NONMEMBER NONMEMBERInstance) {
		if (NONMEMBERInstance == null) {
			notFound()
			return
		}

		if (NONMEMBERInstance.hasErrors()) {
			respond NONMEMBERInstance.errors, view:'edit'
			return
		}

		NONMEMBERInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'NONMEMBER.label', default: 'NONMEMBER'),
					NONMEMBERInstance.id
				])
				redirect NONMEMBERInstance
			}
			'*'{ respond NONMEMBERInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(NONMEMBER NONMEMBERInstance) {

		if (NONMEMBERInstance == null) {
			notFound()
			return
		}

		NONMEMBERInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'NONMEMBER.label', default: 'NONMEMBER'),
					NONMEMBERInstance.id
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
					message(code: 'NONMEMBER.label', default: 'NONMEMBER'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
