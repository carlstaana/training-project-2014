package com.apollo.training

class ProductType {
	
	String name
	
    static constraints = {
		name(blank:false, nullable:false, unique:true, maxSize:100)
    }
	
	String toString() {
		return name
	}
}
