package com.apollo.training

class CompanyPayment{

		int membershipFee
		int seminarFee
		int entranceFee
		String orNo
		Date orDate
		String remarks

		static belongsTo = [company:Company]

		static constraints = {
			membershipFee(nullable:true)
			seminarFee(nullable:true)
			entranceFee(nullable:true)
			orNo(nullable:true,blank:true)
			orDate(nullable:true,blank:true)
			remarks(nullable:true,blank:true)
		}
		
		String toString(){
			return "${membershipFee} ${seminarFee} ${entranceFee}"
		}
	}