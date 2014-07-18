package com.apollo.training

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured('IS_AUTHENTICATED_FULLY')
@Transactional(readOnly = true)
class UserController {

	def springSecurityService

	def selectUser

	def passwordEncoder

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)


		// get the role
		def roles = springSecurityService.getPrincipal().getAuthorities()
		def adminRole = Role.findByAuthority('ROLE_ADMIN')
		
		params.max = Math.min(params.max ? params.int('max') : 5, 100)

		def userList = User.createCriteria().list (params) {
		if(params.query == null){
			respond User.list(params), model:[userInstanceCount: User.count()]
			}	
				or {
				eq("username", "${params.query}")
			}
		}

		[userInstanceList: userList, userInstanceTotal: userList.totalCount]
	}

	def show(User userInstance) {
		respond userInstance
	}

	def create() {
		//respond new User(params)
		def user = springSecurityService.getPrincipal()
		[userInstance: new User(params)]
	}

	@Transactional
	def save(User userInstance) {
		/*if (userInstance == null) {
		 notFound()
		 return
		 }
		 if (userInstance.hasErrors()) {
		 respond userInstance.errors, view:'create'
		 return
		 }
		 userInstance.save flush:true
		 request.withFormat {
		 form multipartForm {
		 flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
		 redirect userInstance
		 }
		 '*' { respond userInstance, [status: CREATED] }
		 }*/
		def map = params
		userInstance = new User(params)
		if (!userInstance.save(flush: true)) {
			render(view: "create", model: [userInstance: userInstance])
			return
		}

		if (!userInstance.authorities.contains(Role.findByAuthority(params.role))) {
			UserRole.create userInstance, Role.findByAuthority(params.role)
		}

		flash.message = message(code: 'default.created.message', args: [
			message(code: 'user.label', default: 'User'),
			userInstance.id
		])
		redirect(action: "show", id: userInstance.id)
	}

	def edit(User userInstance) {
		selectUser = userInstance.username
		respond userInstance
	}

	@Transactional
	def update(User userInstance) {
		if (userInstance == null) {
			notFound()
			return
		}

		if (userInstance.hasErrors()) {
			respond userInstance.errors, view:'edit'
			return
		}

		Collection<UserRole> userRoles = UserRole.findAllByUser(userInstance)
		userRoles*.delete()

		UserRole.create userInstance, Role.findByAuthority(params.role)
		userInstance.save flush: true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'User.label', default: 'User'),
					userInstance.id
				])
				redirect userInstance
			}
			'*'{
				respond userInstance, [status: OK]
			}
		}
	}

	@Transactional
	def delete(User userInstance) {

		if (userInstance == null) {
			notFound()
			return
		}

		//userInstance.delete flush:true

		Collection<UserRole> userRoles = UserRole.findAllByUser(userInstance)
		userRoles*.delete()
		userInstance.delete()

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'User.label', default: 'User'),
					userInstance.id
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
					message(code: 'user.label', default: 'User'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}

	@Transactional
	def changePassword() {
		def oldPassword = params.oldPassword
		def newPassword = params.newPassword
		def retype = params.retypeNewPassword
		def changeUser = User.findByUsername(selectUser)

		// old password must be equal to the old password in database
		if(oldPassword != null && newPassword!= null && retype != null && !passwordEncoder.isPasswordValid(changeUser.password, oldPassword, null /*salt*/)) {
			render "Error! Old Password is not equal to the password in database."
		}

		if(oldPassword != null && newPassword!= null && retype != null && passwordEncoder.isPasswordValid(changeUser.password, oldPassword, null /*salt*/)) {
			if(newPassword == retype) {
				changeUser.password = newPassword
				changeUser.retypePassword = newPassword
				changeUser.save flush: true
				flash.message = "Password Changed!"
				redirect action:"changePassword"
			} else {
			flash.error = "Password is not equal!"
				redirect action:"changePassword"
			}
		}
		
/*		else if(oldPassword != null || newPassword!= null || retype != null) {
			render "Error! All fields required."
		}
*/
	}
}
