package com.apollo.training

import java.util.List;

class ProductCategory {

	static constraints = {
		name(nullable:false,blank:false)
		productType(nullable:false,blank:false)
	}
	
	String name
	ProductType productType
	List<SubCategory> subCategories = [].withLazyDefault {new SubCategory() } as Factory
	
	static hasMany = [ subCategories : SubCategory, product:Product]
	
	static mapping = {
		subCategories cascade:"all-delete-orphan"
	}
	
	String toString(){
		return "${this.name}"
	}
	
	def getSubCategoryList() {
		return subCategories
	}
}
