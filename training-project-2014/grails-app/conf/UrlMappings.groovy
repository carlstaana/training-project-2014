class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/login/denied')
		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
	}
}
