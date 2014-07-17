package com.apollo.training

class EAN8 {
	// company information
	String company
	Integer gln
	Integer prefix
	String contactPerson
	// ean8 information
	Float ean8Number
	String brand
	String sku
	String issueNumber
	// ean8 status
	Date temporaryIssueDate
	Date permanentIssueDate
	// payment details
	String orNumber
	BigDecimal amountPaid
	Date datePaid
	String paymentRemarks
	// dimensions
	String unitSize
	String productContainer
	String label
	String totalPrintArea
	// dates
	Date dateGiven
	// remarks
	String remarks
	
	
    static constraints = {
		company(blank:false, nullable:false)
		gln(blank:true, nullable:true)
		prefix(blank:true, nullable:true)
		contactPerson(blank:true, nullable:true)
		
		ean8Number(blank:false, nullable:false, unique:true)
		brand(blank:false, nullable:false, unique:true)
		sku(blank:false, nullable:false, unique:true)
		issueNumber(blank:true, nullable:true)
		
		temporaryIssueDate(nullable:true)
		permanentIssueDate(nullable:true)
		
		orNumber(blank:true, nullable:true)
		amountPaid(blank:true, nullable:true)
		datePaid(nullable:true)
		paymentRemarks(blank:true, nullable:true)
		
		unitSize(blank:true, nullable:true)
		productContainer(blank:true, nullable:true)
		label(blank:true, nullable:true)
		totalPrintArea(blank:true, nullable:true)
		
		dateGiven(nullable:true)
		
		remarks(blank:true, nullable:true)               
    }
}
