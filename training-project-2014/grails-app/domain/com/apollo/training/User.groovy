package com.apollo.training

import java.util.Set;

class User {

	transient springSecurityService
	
	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	String retypePassword
	String firstName
	String lastName
	String middleInitial
	String company
	String position
	String telephoneNumber
	String emailAddress
	//String role

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false, password: true, display: false, validator: {password, obj ->
			def password2 = obj.retypePassword
			password2 == password ? true : ['invalid.matchingpasswords']
		}
		retypePassword blank: false, display: false, password: true
		lastName blank: false, nullable: false
		firstName blank: false, nullable: false
		middleInitial blank: true, nullable: true
		company blank: false, nullable: false
		position blank: false, nullable: false
		telephoneNumber blank: true, nullable: true
		emailAddress blank: true, nullable: true
	}

	static mapping = { password column: '`password`' }

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
		retypePassword = password
	}
}