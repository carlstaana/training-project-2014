package com.apollo.training

class CompanyRemarks {
	
	String message
	
	static belongsTo = [company:Company]

    static constraints = {
		message(blank:false,nullable:false)
    }
	
	String toString(){
		return "${message}"
	}
}
