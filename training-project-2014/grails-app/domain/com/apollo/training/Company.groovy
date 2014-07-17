package com.apollo.training

class Company {
	
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

	String companyName
	String membershipCategory
	String address
	String municipality
	String city
	String province
	float zipCode
	String phone
	String fax
	String email
	String website
	String companyHeadName
	String companyHeadDesignation
	String technicalName
	String technicalTitle
	String technicalPhone
	String technicalFax
	String technicalEmail
	String administrationName
	String administrationTitle
	String administrationPhone
	String administrationFax
	String administrationEmail
	String salesMarketingName
	String salesMarketingTitle
	String salesMarketingPhone
	String salesMarketingFax
	String salesMarketingEmail
	NatureOfBusiness natureOfBusiness
	Date validity
	View view
	String status

	static hasMany = [ companyRemarks : CompanyRemarks, companyPayment : CompanyPayment, products: Product ]

	static constraints = {
		companyName(blank:false,nullable:false,size:8..30)
		membershipCategory(inList:[
			"EAN7",
			"EAN8",
			"EAN9",
			"EAN10"
		])
		address(blank:false,nullable:false)
		municipality(blank:true,nullable:true)
		city(blank:true,nullable:true)
		province(blank:true,nullable:true)
		zipCode(blank:true,nullable:true,size:4..4)
		phone(blank:true,nullable:true)
		fax(blank:true,nullable:true)
		email(blank:true,nullable:true,email:true)
		website(blank:true,nullable:true,url:true)
		companyHeadName(blank:true,nullable:true)
		companyHeadDesignation(blank:true,nullable:true)
		technicalName(blank:false,nullable:false)
		technicalTitle(blank:true,nullable:true)
		technicalPhone(blank:false,nullable:false)
		technicalFax(blank:true,nullable:true)
		technicalEmail(blank:true,nullable:true,email:true)
		administrationName(blank:false,nullable:false)
		administrationTitle(blank:true,nullable:true)
		administrationPhone(blank:false,nullable:false)
		administrationFax(blank:true,nullable:true)
		administrationEmail(blank:true,nullable:true,email:true)
		salesMarketingName(blank:false,nullable:false)
		salesMarketingTitle(blank:true,nullable:true)
		salesMarketingPhone(blank:false,nullable:false)
		salesMarketingFax(blank:true,nullable:true)
		salesMarketingEmail(blank:true,nullable:true,email:true)
		natureOfBusiness(blank:false,nullable:false)
		validity(blank:false,nullable:false)
		view(blank:false,nullable:false)
		companyRemarks(blank:true,nullable:true,display:false)
		companyPayment(blank:true,nullable:true,display:false)
		products(blank:true,nullable:true,display:false)
		status(nullable:true)
	}
	
	static mapping = {
		companyRemarks cascade: 'all-delete-orphan'
		companyPayment cascade: 'all-delete-orphan'
		products cascade: 'all-delete-orphan'
	}


	String toString(){
		return "${companyName}"
	}
}
