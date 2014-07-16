package com.apollo.training

class NatureOfBusiness {

	String name

	static constraints = {
		name(blank:false, nullable:false, unique:true, maxSize:100)
	}
	
	String toString() {
		return name
	}
}
