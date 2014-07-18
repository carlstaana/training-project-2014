package com.apollo.training

import java.text.SimpleDateFormat
import org.springframework.aop.aspectj.RuntimeTestWalker.ThisInstanceOfResidueTestVisitor;

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
		brand
	}
	
	def springSecurityService
	
	Product(String[] column, def role, def userCompany){
		def c = Company.findByCompanyName(column[0].trim())
		
		if(c==null){
			throw new IllegalArgumentException("No such company exists ["+column[0].trim()+"]")
		}
		
		if(role.toString().equals('[ROLE_ADMIN]')){
			this.company = c
		}else{
			if(userCompany!=null && userCompany.equals(column[0].trim())){
				this.company = c
			}else{
				throw new IllegalArgumentException("Sorry, you are not allowed to upload products for a different company.")
			}
		}
		
		this.subCompany = column[1].trim()
		
		
		this.GLN = Integer.valueOf(column[2].trim())
		this.prefix = Integer.valueOf(column[3].trim())
		this.GTIN = Integer.valueOf(column[4].trim())
		
		
		this.brand = column[5].trim()
		this.BFADRegistrationNumber = column[6].trim()
		this.shortName = column[7].trim()
		this.description = column[8].trim()
		
		
		this.netContent = Float.valueOf(column[9].trim())
		
		
		this.packageType = column[10].trim()
		
		
		this.stackingHeight = Integer.valueOf(column[11].trim())
		
		
		
		
		this.noOfLayersPerPallet = Float.valueOf(column[13].trim())
		
		
		this.netWeight = Integer.valueOf(column[14].trim())
		
		

			this.tradeItemLength = Integer.valueOf(column[16].trim())
			this.tradeItemWidth = Integer.valueOf(column[18].trim())
			this.tradeItemHeight = Integer.valueOf(column[20].trim())
		
		
		if(isValidUnitOfSize(column[12].trim())){
			this.unitOfMeasureStackingHeight = column[12].trim()
		}else{
			throw new IllegalArgumentException("Invalid unit of measure for stacking height. Must be centimeters, millimeters or meters.")
		}
		if(isValidUnitOfWeight(column[15].trim())){
		this.unitOfMeasureNetWeight = column[15].trim()
		}else{
			throw new IllegalArgumentException("Invalid unit of measure for net weight. Must be grams, milligrams or kilograms.")
		}
		if(isValidUnitOfSize(column[17].trim())){
			this.unitOfMeasureLength = column[17].trim()
		}else{
			throw new IllegalArgumentException("Invalid unit of measure for length. Must be centimeters, millimeters or meters.")
		}
		if(isValidUnitOfSize(column[19].trim())){
			this.unitOfMeasureWidth = column[19].trim()
		}else{
			throw new IllegalArgumentException("Invalid unit of measure for width. Must be centimeters, millimeters or meters.")
		}
		if(isValidUnitOfSize(column[21].trim())){
			this.unitOfMeasureHeight = column[21].trim()
		}else{
			throw new IllegalArgumentException("Invalid unit of measure for height. Must be centimeters, millimeters or meters.")
		}
		
		if(isValidUnitOfOrder(column[27].trim())){
			this.unitOfMeasureOrderUnit = column[27].trim()
		}else{
			throw new IllegalArgumentException("Invalid unit of measure for order unit. Must be bottles, boxes, cartons, crates, grams, meters or pieces.")
		}
		
		this.handling = column[22].trim()
		this.storage = column[23].trim()
		
		def formatter = new SimpleDateFormat("yyyy-MM-dd")
		
		this.startDate = formatter.parse(column[24].trim())
		this.endDate = formatter.parse(column[25].trim())
		
		
		
		this.minimumOrderQuantity = Integer.valueOf(column[26].trim())
		
		
		for(View value: View.values()){
			if(value.toString().equals(column[28].trim())){
				this.view = value
			}
		}
		def pc = ProductCategory.findByName(column[29].trim()) 
		if(pc==null){
			throw new IllegalArgumentException("No such product category found ["+column[29].trim()+"].")
		}
		this.productCategory = pc
		
		this.status = "added"
		
	}
	
	boolean isValidUnitOfSize(String unit){
		boolean valid = false
		if(unit.equals("centimeters")||unit.equals("millimeters")||unit.equals("meters")){
			valid = true
		}
		return valid
	}
	
	boolean isValidUnitOfWeight(String unit){
		boolean valid = false
		if(unit.equals("grams")||unit.equals("milligrams")||unit.equals("kilograms")){
			valid = true
		}
		return valid
	}
	
	boolean isValidUnitOfOrder(String unit){
		boolean valid = false
		if(unit.equals("bottles")||unit.equals("boxes")||unit.equals("cartons")||unit.equals("crates")||unit.equals("grams")||unit.eqauls("meters")||unit.equals("pieces")){
			valid = true
		}
		return valid
	}
}
