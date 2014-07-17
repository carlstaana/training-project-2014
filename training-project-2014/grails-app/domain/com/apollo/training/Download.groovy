package com.apollo.training

class Download {

	byte[] file
	String description
	String fileName
	String fileType
	String filePath
	
    static constraints = {
		file(nullable:false, maxSize:100000)
		description(nullable:false, blank:false, maxLength:200)
		fileName(nullable:true, blank:true, display:false)
		fileType(nullable:true, blank:true, display:false)
		filePath(nullable:true, blank:true, display:false)
    }
	
}
