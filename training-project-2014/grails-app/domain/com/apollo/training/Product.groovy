package com.apollo.training

class Product{

	enum SearchCategories{
		ALL("all"), ADDED("added"), EDITED("edited"), CANCELLED("cancelled"), APPROVED("approved"), REJECTED("rejected")

		String searchCategory

		SearchCategories(String searchCategory) {
			this.searchCategory = searchCategory
		}

		String toString() {
			searchCategory
		}
		String getKey() {
			name()
		}
	}

	String subCompany
	ProductCategory productCategory
	int GLN
	int prefix
	int GTIN
	String brand
	String BFADRegistrationNumber
	String shortName
	String description
	float netContent
	String packageType
	int stackingHeight
	String unitOfMeasureStackingHeight
	int netWeight
	float noOfLayersPerPallet
	String unitOfMeasureNetWeight
	int tradeItemLength
	String unitOfMeasureLength
	int tradeItemWidth
	String unitOfMeasureWidth
	int tradeItemHeight
	String unitOfMeasureHeight
	String handling
	String storage
	Date startDate
	Date endDate
	float minimumOrderQuantity
	String unitOfMeasureOrderUnit
	View view
	String status

	static mapping = { 
		status defaultValue : "'ADDED'" 
		}
	
	static hasOne = [productCategory:ProductCategory, company:Company]
	static belongsTo = [company:Company]

	static constraints = {
		company(blank:false,nullable:false)
		subCompany(blank:true,nullable:true)
		GLN(blank:true,nullable:true)
		prefix(blank:true,nullable:true)
		GTIN(blank:false,nullable:false)
		brand(blank:false,nullable:false)
		BFADRegistrationNumber(blank:true,nullable:true)
		shortName(blank:false,nullable:false)
		description(blank:false,nullable:false)
		netContent(blank:false,nullable:false)
		packageType(blank:true,nullable:true)
		stackingHeight(blank:true,nullable:true)
		unitOfMeasureStackingHeight(inList:[
			"centimeters",
			"meters",
			"millimeters"
		])
		noOfLayersPerPallet(blank:true,nullable:true)
		netWeight(blank:false,nullable:false)
		unitOfMeasureNetWeight(inList:[
			"grams",
			"kilograms",
			"milligrams"
		])
		tradeItemLength(blank:true,nullable:true)
		unitOfMeasureLength(inList:[
			"centimeters",
			"meters",
			"millimeters"
		])
		tradeItemWidth(blank:true,nullable:true)
		unitOfMeasureWidth(inList:[
			"centimeters",
			"meters",
			"millimeters"
		])
		tradeItemHeight(blank:true,nullable:true)
		unitOfMeasureHeight(inList:[
			"centimeters",
			"meters",
			"millimeters"
		])
		handling(blank:true,nullable:true)
		storage(blank:true,nullable:true)
		startDate(blank:true,nullable:true)
		endDate(blank:true,nullable:true)
		minimumOrderQuantity(blank:true,nullable:true)
		unitOfMeasureOrderUnit(inList:[
			"bottles",
			"boxes",
			"cartons",
			"crates",
			"grams",
			"meters",
			"pieces"
		])
		view(blank:true,nullable:true)
		productCategory(blank:false,nullable:false)
		status(nullable:true)
	}

	String toString(){
		return "${brand}"
	}
}
