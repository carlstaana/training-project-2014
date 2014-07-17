package com.apollo.training

class Article {
	public static final int MAX_IMAGE_SIZE = 2097152
	String title
	String author
	String newsType
	byte[] imageFile
	byte[] publication
	byte[] story
	
    static constraints = {
		title(blank:false, nullable:false)
		author(blank:false, nullable:false)
		imageFile(blank:false, nullable:false, maxSize: MAX_IMAGE_SIZE)
		publication(blank:false, nullable:false)
		story(blank:false, nullable:false, maxSize: MAX_IMAGE_SIZE)
		newsType(inList:["Local", "International"])
    }
	
	String publicationString(){
		return new String(publication)
	}
	
	String storyString(){
		return new String(story)
	}
}
