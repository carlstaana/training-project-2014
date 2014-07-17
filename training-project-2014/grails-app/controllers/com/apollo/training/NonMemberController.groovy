package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class NonMemberController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		//respond NonMember.list(params), model:[nonMemberInstanceCount: NonMember.count()]

		params.max = Math.min(params.max ? params.int('max') : 5, 100)

		def nonmemberList = NonMember.createCriteria().list (params) {
			or {
				ilike("name", "%${params.query}%")
				eq("gln", "%${params.query}%")
			}
		}

		[nonMemberInstanceList: nonmemberList, nonMemberInstanceTotal: nonmemberList.totalCount]
	}

	def show(NonMember nonMemberInstance) {
		respond nonMemberInstance
	}

	def create() {
		respond new NonMember(params)
	}

	@Transactional
	def save(NonMember nonMemberInstance) {
		if (nonMemberInstance == null) {
			notFound()
			return
		}

		if (nonMemberInstance.hasErrors()) {
			respond nonMemberInstance.errors, view:'create'
			return
		}

		nonMemberInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'nonMember.label', default: 'NonMember'),
					nonMemberInstance.id
				])
				redirect nonMemberInstance
			}
			'*' { respond nonMemberInstance, [status: CREATED] }
		}
	}

	def edit(NonMember nonMemberInstance) {
		respond nonMemberInstance
	}

	@Transactional
	def update(NonMember nonMemberInstance) {
		if (nonMemberInstance == null) {
			notFound()
			return
		}

		if (nonMemberInstance.hasErrors()) {
			respond nonMemberInstance.errors, view:'edit'
			return
		}

		nonMemberInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'NonMember.label', default: 'NonMember'),
					nonMemberInstance.id
				])
				redirect nonMemberInstance
			}
			'*'{ respond nonMemberInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(NonMember nonMemberInstance) {

		if (nonMemberInstance == null) {
			notFound()
			return
		}

		nonMemberInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'NonMember.label', default: 'NonMember'),
					nonMemberInstance.id
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
					message(code: 'nonMember.label', default: 'NonMember'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
