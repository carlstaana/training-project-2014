package com.apollo.training

enum View {

	PUBLIC("public"), MEMBER("member"), RESTRICTED("restricted")

	String viewType

	View(String viewType) {
		this.viewType = viewType
	}

	String toString() {
		viewType
	}
	String getKey() {
		name()
	}
}
