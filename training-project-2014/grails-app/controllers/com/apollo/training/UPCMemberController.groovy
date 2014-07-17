package com.apollo.training



import static org.springframework.http.HttpStatus.*

import com.sun.xml.internal.bind.v2.model.core.ID;

import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class UPCMemberController {

	static allowedMethods = [save: "POST", update: "PUT", delete: ["POST", "DELETE"], option: "POST"]
	static scaffold = true

	def searchableService

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		
		if(params.status == null) {
			respond UPCMember.list(params), model:[UPCMemberInstanceCount: UPCMember.count()]
		} else {
			def upcMemberList = UPCMember.createCriteria().list (params) {

				if ( params.status != 'ALL' ) {
					ilike("status", "%${params.status}%")
				}
			}
			
			[UPCMemberInstanceList: upcMemberList, UPCMemberInstanceCount: upcMemberList.totalCount]
		}
	}

	def show(UPCMember UPCMemberInstance) {
		respond UPCMemberInstance
	}

	def create() {
		respond new UPCMember(params)
	}

	@Transactional
	def save(UPCMember UPCMemberInstance) {
		if (UPCMemberInstance == null) {
			notFound()
			return
		}

		if (UPCMemberInstance.hasErrors()) {
			respond UPCMemberInstance.errors, view:'create'
			return
		}

		UPCMemberInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'UPCMember.label', default: 'UPC Member: '),
					UPCMemberInstance.companyName
				])
				redirect UPCMemberInstance
			}
			'*' { respond UPCMemberInstance, [status: CREATED] }
		}
	}

	def edit(UPCMember UPCMemberInstance) {
		respond UPCMemberInstance
	}

	@Transactional
	def update(UPCMember UPCMemberInstance) {
		if (UPCMemberInstance == null) {
			notFound()
			return
		}

		if (UPCMemberInstance.hasErrors()) {
			respond UPCMemberInstance.errors, view:'edit'
			return
		}

		if (UPCMemberInstance.status == "ADDED") {
			UPCMemberInstance.status = "EDITED"
		}

		UPCMemberInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'UPCMember.label', default: 'UPC Member: '),
					UPCMemberInstance.companyName
				])
				redirect UPCMemberInstance
			}
			'*'{ respond UPCMemberInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(UPCMember UPCMemberInstance) {

		if (UPCMemberInstance == null) {
			notFound()
			return
		}

		UPCMemberInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'UPCMember.label', default: 'UPC Member: '),
					UPCMemberInstance.companyName
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	@Transactional
	def option(UPCMember UPCMemberInstance) {
		if (UPCMemberInstance == null) {
			notFound()
			return
		}

		def codeValue		
		
		if (params._action_option == "Reject") {
			UPCMemberInstance.status = "REJECTED"
			codeValue = 'default.rejected.message'
		} else if (params._action_option == "Approve") {
			codeValue = 'default.approved.message'
			UPCMemberInstance.status = "APPROVED"
		} else if (params._action_option == "Cancel UPC Member") {
			UPCMemberInstance.status = "CANCELLED"
			codeValue = 'default.cancelled.message'
		} else if (params._action_option == "Reactivate") {
			UPCMemberInstance.status = "APPROVED"
			codeValue = 'default.reactivated.message'
		}

		UPCMemberInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: codeValue, args: [
					message(code: 'UPCMember.label', default: 'UPC Member: '),
					UPCMemberInstance.companyName
				])
				redirect UPCMemberInstance
			}
			'*'{ respond UPCMemberInstance, [status: OK] }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'UPCMember.label', default: 'UPC Member: '),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
