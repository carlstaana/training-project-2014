package com.apollo.training


class SubCategory {

	static constraints = {
		sName(blank:false,nullable:false)
		code(blank:false,nullable:false)
		description(blank:false,nullable:false)
		index(blank:false, min:0)
	}
	
	static mapping = {
		index column:"sub_category_index"
	}

	int index
	String sName
	String code
	String description
	Boolean deleted = false
	static belongsTo = [ productCategory:ProductCategory ]

	String toString(){
		index = index+1;
		return "($index) ${sName}"
	}
}
