package com.apollo.training

class Topic {

	//change author type to User
	String title
	String author
	Date dateCreated
	Date lastUpdated
	
	static hasMany = [posts:Post]
	//static belongsTo = [author:User]
	
    static constraints = {
		title(nullable:false, blank:false,unique:false)
		author(nullable:false, blank:false)
    }
	
	Topic(String title, String author, String status){
		this.title = title
		this.author = author
	}
	
	String toString(){
		return "${title}"
	}
	
}
