package com.apollo.training

class Post {

	//change author to user
	String author
	String message
	Date dateCreated
	Date lastUpdated
	
	static belongsTo=[topic:Topic]
	//static belongsTo=[author:User]
	
	
    static constraints = {
		author(nullable:false, blank:false)
		message(nullable:false, blank:false, maxLength:5000)	
    }
	
	Post(String author, String message){
		this.author = author
		this.message = message
	}
	
	
}
