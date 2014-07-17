import com.apollo.training.*

class BootStrap {

	def mailService
	
	def init = { servletContext ->
/*		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN', description: 'admin').save(failOnError: true)
		def editorRole = Role.findByAuthority('ROLE_EDITOR') ?: new Role(authority: 'ROLE_EDITOR', description: 'editor').save(failOnError: true)
		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER', description: 'user').save(failOnError: true)

		def testUser = new User(username: 'carlstaana', password: 'ap0ll0', retypePassword: 'ap0ll0', lastName: 'Sta.Ana', firstName: 'Carl Kenneth', company: 'Apollo Technologies, Inc.', position: 'Developer Trainee', emailAddress: 'carlstaana@apollo.com.ph')
		testUser.save(flush: true)

		UserRole.create testUser, adminRole, true

		assert User.count() == 1
		assert Role.count() == 3
		assert UserRole.count() == 1*/
		
/*		mailService.sendMail {
			to "carlstaana@apollo.com.ph"
			cc "rainiercruzado@apollo.com.ph", "kristoferlora@apollo.com.ph", "pamelallorence@apollo.com.ph", "jasperadlaon@apollo.com.ph"
			subject "Email Sending Test"
			body 'Grails sending password confirmation. Testing for multiple receipients'
		}*/
	}
	def destroy = {
	}
}
