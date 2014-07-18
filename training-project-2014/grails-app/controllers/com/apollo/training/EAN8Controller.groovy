package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class EAN8Controller {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		//respond EAN8.list(params), model:[EAN8InstanceCount: EAN8.count()]

		params.max = Math.min(params.max ? params.int('max') : 5, 100)

		def EAN8List = EAN8.createCriteria().list (params) {
		if(params.query == null){
			respond EAN8.list(params), model:[EAN8InstanceCount: EAN8.count()]
			}	
				or {
				ilike("company", "%${params.query}%")
			}
		}

		[EAN8InstanceList: EAN8List, EAN8InstanceTotal: EAN8List.totalCount]
	}

	def show(EAN8 EAN8Instance) {
		respond EAN8Instance
	}

	def create() {
		respond new EAN8(params)
	}

	@Transactional
	def save(EAN8 EAN8Instance) {
		if (EAN8Instance == null) {
			notFound()
			return
		}

		if (EAN8Instance.hasErrors()) {
			respond EAN8Instance.errors, view:'create'
			return
		}

		EAN8Instance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'EAN8.label', default: 'EAN8'),
					EAN8Instance.id
				])
				redirect EAN8Instance
			}
			'*' { respond EAN8Instance, [status: CREATED] }
		}
	}

	def edit(EAN8 EAN8Instance) {
		respond EAN8Instance
	}

	@Transactional
	def update(EAN8 EAN8Instance) {
		if (EAN8Instance == null) {
			notFound()
			return
		}

		if (EAN8Instance.hasErrors()) {
			respond EAN8Instance.errors, view:'edit'
			return
		}

		EAN8Instance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'EAN8.label', default: 'EAN8'),
					EAN8Instance.id
				])
				redirect EAN8Instance
			}
			'*'{ respond EAN8Instance, [status: OK] }
		}
	}

	@Transactional
	def delete(EAN8 EAN8Instance) {

		if (EAN8Instance == null) {
			notFound()
			return
		}

		EAN8Instance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'EAN8.label', default: 'EAN8'),
					EAN8Instance.id
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
					message(code: 'EAN8.label', default: 'EAN8'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
