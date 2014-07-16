package com.apollo.training

import java.util.Date;

class BatchPayment {

	String membershipCategory
	Date membershipDate
	String description
	int balance
	
    static constraints = {
		membershipCategory(inList:["EAN7", "EAN8", "EAN9", "EAN10"])
		membershipDate(nullable:true,blank:true)
		description(nullable:false,blank:false)
		balance(nullable:false,blank:false)
    }
}
