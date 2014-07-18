package com.apollo.training



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class GS1UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def springSecurityService
	
	def selectUser
	
	def passwordEncoder
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        //respond GS1User.list(params), model:[GS1UserInstanceCount: GS1User.count()]
		
		/**
		 * searching the GS1USers
		 */
		params.max = Math.min(params.max ? params.int('max') : 5, 100)
		def GS1UserList = GS1User.createCriteria().list(params) {
		    if(params.query == null){
				respond GS1User.list(params), model:[GS1UserInstanceCount: GS1User.count()]
			}		   
			or {
			   ilike("username", "%${params.query}%")
			   ilike("firstname", "%${params.query}%")
			   ilike("lastname", "%${params.query}%")
			   ilike("company", "%${params.query}%")
			   ilike("role", "%${params.query}%")
		   }
	   }
	   [GS1UserInstanceList: GS1UserList, GS1UserInstanceTotal: GS1UserList.totalCount]
		
    }

    def show(GS1User GS1UserInstance) {
        respond GS1UserInstance
    }

    def create() {
        respond new GS1User(params)
    }

    @Transactional
    def save(GS1User GS1UserInstance) {
        if (GS1UserInstance == null) {
            notFound()
            return
        }

        if (GS1UserInstance.hasErrors()) {
            respond GS1UserInstance.errors, view:'create'
            return
        }

        GS1UserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'GS1User.label', default: 'GS1User'), GS1UserInstance.id])
                redirect GS1UserInstance
            }
            '*' { respond GS1UserInstance, [status: CREATED] }
        }
    }

    def edit(GS1User GS1UserInstance) {
		selectUser = GS1UserInstance.username
        respond GS1UserInstance
    }

    @Transactional
    def update(GS1User GS1UserInstance) {
        if (GS1UserInstance == null) {
            notFound()
            return
        }

        if (GS1UserInstance.hasErrors()) {
            respond GS1UserInstance.errors, view:'edit'
            return
        }

        GS1UserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GS1User.label', default: 'GS1User'), GS1UserInstance.id])
                redirect GS1UserInstance
            }
            '*'{ respond GS1UserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GS1User GS1UserInstance) {

        if (GS1UserInstance == null) {
            notFound()
            return
        }

        GS1UserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GS1User.label', default: 'GS1User'), GS1UserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'GS1User.label', default: 'GS1User'), params.id])
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
		def changeUser = GS1User.findByUsername(selectUser)

		// old password must be equal to the old password in database
		if(oldPassword != null && newPassword!= null && retype != null && oldPassword != changeUser.password) {
			render "Error! Old Password is not equal to the password in database."
		}

		if(oldPassword != null && newPassword!= null && retype != null && oldPassword == changeUser.password) {
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
		
	/*	else if(oldPassword != null || newPassword!= null || retype != null) {
		flash.error = "Field Retype Password is null!"
			redirect action:"changePassword"
		}
	*/
	}
}
