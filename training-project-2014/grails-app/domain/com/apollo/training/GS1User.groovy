package com.apollo.training

class GS1User {
	String username
	String password
	String retypePassword
	String lastname
	String firstname
	String middleInitial
	String company
	String position
	String telephoneNumber
	String email
	String role
	//static searchable = true   

	static constraints = {
		username(blank:false, nullable:false, unique:true)
		password(blank:false, nullable:false, password:true,
		validator: {pas, obj ->
			if(pas?.equals(obj.retypePassword)){
				return true
			}
			else{
				return false
			}
		}
		)
		retypePassword(blank:false, nullable:false, password:true)
		lastname(blank:false, nullable:false)
		firstname(blank:false, nullable:false)
		middleInitial(blank:true, nullable:true)
		company(blank:false, nullable:false)
		position(blank:false, nullable:false)
		telephoneNumber(blank:true, nullable:true)
		email(blank:true, nullable: true, email:true)
		role(inList:["ROLE_ADMINISTRATOR","ROLE_EDITOR","ROLE_MEMBERSHIP_ADMIN","ROLE_PANC_ADMINISTRATOR","ROLE_REPORTS_ADMIN","ROLE_REVIEWER","ROLE_USER"])
	}
	//static transients = ['retypePassword']
}
