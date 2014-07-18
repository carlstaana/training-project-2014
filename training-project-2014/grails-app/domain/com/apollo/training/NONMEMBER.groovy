package com.apollo.training

import java.sql.Timestamp

class NONMEMBER {
	// non-member information
	String name
	Integer gln
	String address
	String municipality
	String city
	String province
	String zipCode
	String phone
	String fax
	String email
	String website
	// gln details
	String reasonForApplyingGLN
	String tradingPartners
	String communicationNetworkUsed
	String providerName
	String thruEmailInternetOthersLikeVAN
	String ebxmlEDI
	String businessMessageUsed
	String ediMessageStandardUsed
	// non-member head
	String headName
	String designation
	// ---contacts
	// technical
	String techName
	String techTitle
	String techPhone
	String techFax
	String techEmail
	// administration
	String adminName
	String adminTitle
	String adminPhone
	String adminFax
	String adminEmail
	// sales/marketing
	String salesName
	String salesTitle
	String salesPhone
	String salesFax
	String salesEmail
	// ---end of contacts
	// classification
	String natureOfBusiness
	String products
	// dates
	Date issueDate
	// remarks
	String remarks
	
	static constraints = {
		name(blank:false, nullable:false, unique:true)
		gln(blank:false, nullable:false, unique:true, matches:/^(\d{14})$/)
		address(blank:true, nullable:true)
		municipality(blank:true, nullable:true)
		city(blank:true, nullable:true)
		province(blank:true, nullable:true)
		zipCode(blank:true, nullable:true)
		phone(blank:true, nullable:true)
		fax(blank:true, nullable:true)
		email(blank:true, nullable:true)
		website(blank:true, nullable:true)
		
		reasonForApplyingGLN(blank:true, nullable:true)
		tradingPartners(blank:true, nullable:true)
		communicationNetworkUsed(blank:true, nullable:true)
		providerName(blank:true, nullable:true)
		thruEmailInternetOthersLikeVAN(blank:true, nullable:true)
		ebxmlEDI(blank:true, nullable:true)
		businessMessageUsed(blank:true, nullable:true)
		ediMessageStandardUsed(blank:true, nullable:true)
		
		headName(blank:true, nullable:true)
		designation(blank:true, nullable:true)
		
		techName(blank:true, nullable:true)
		techTitle(blank:true, nullable:true)
		techPhone(blank:true, nullable:true)
		techFax(blank:true, nullable:true)
		techEmail(blank:true, nullable:true)
		
		adminName(blank:true, nullable:true)
		adminTitle(blank:true, nullable:true)
		adminPhone(blank:true, nullable:true)
		adminFax(blank:true, nullable:true)
		adminEmail(blank:true, nullable:true)
		
		salesName(blank:true, nullable:true)
		salesTitle(blank:true, nullable:true)
		salesPhone(blank:true, nullable:true)
		salesFax(blank:true, nullable:true)
		salesEmail(blank:true, nullable:true)
		
		natureOfBusiness(blank:true, nullable:true)
		products(blank:true, nullable:true)
		
		issueDate(unique:false, nullable:true)
		
		remarks(blank:true, nullable:true)
	}
}
