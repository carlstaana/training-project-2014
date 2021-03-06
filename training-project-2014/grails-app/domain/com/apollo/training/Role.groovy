package com.apollo.training

class Role {

	String authority
	String description

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
		description blank: false, unique: true
	}
}
