package com.apollo.training

class UPCMember {
	String companyName
	String subCompanyName
	String address
	String municipality
	String city
	String province
	String zipCode
	String phone
	String fax
	String email
	String purposeOfApplication
	Date upcMembershipDate = new Date()
	String upcCoordinatorName
	String upcCoordinatorTitle
	String upcCoordinatorPhone
	String upcCoordinatorFax
	String upcCoordinatorEmail
	String upcCode
	String upcOrNumber
	Date upcOrDate = new Date()
	BigDecimal upcAmountPaid
	String upcPaymentRemarks
	String remarks
	String status = "ADDED"
	
	static constraints = {
		// Company Information
		companyName(blank:false, nullable:false, maxSize:100, unique:true)
		subCompanyName(blank:true, nullable:true, maxSize:100)
		address(blank:true, nullable:true, maxSize:100)
		municipality(blank:true, nullable:true, maxSize:100)
		city(blank:true, nullable:true, maxSize:100)
		province(blank:true, nullable:true, maxSize:100)
		zipCode(blank:true, nullable:true, matches:/\d{4}/)
		phone(blank:true, nullable:true, matches:/\d{3}-\d{7}/)
		fax(blank:true, nullable:true, matches:/\d{3}-\d{7}/)
		email(blank:true, nullable:true, email:true)
		purposeOfApplication(blank:true, nullable:true, maxSize:255)
		upcMembershipDate(blank:true, nullable:true)
																																																															
		// UPC Coordinator
		upcCoordinatorName(blank:false, nullable:false, maxSize:100)
		upcCoordinatorTitle(blank:true, nullable:true, maxSize:100)
		upcCoordinatorPhone(blank:false, nullable:false, matches:/\d{3}-\d{7}/)
		upcCoordinatorFax(blank:true, nullable:true, matches:/\d{3}-\d{7}/)
		upcCoordinatorEmail(blank:true, nullable:true, email:true)
		
		// UPC Information
		upcCode(nullable:true, matches:/\d{15}/, unique:true)
		upcOrNumber(blank:true, nullable:true, maxSize:100, unique:true)
		upcOrDate(blank:true, nullable:true)
		upcAmountPaid(blank:true, nullable:true, scale:2)
		upcPaymentRemarks(blank:true, nullable:true, maxSize:255)
		
		// Remarks
		remarks(blank:true, nullable:true, maxSize:255)
		
		// Extra Fields
		status(display:false)
	}
}
