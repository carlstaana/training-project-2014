import com.apollo.training.*

class BootStrap {

	def mailService
	
	def springSecurityService
	
	def init = { servletContext ->
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN', description: 'admin').save(failOnError: true)
		def editorRole = Role.findByAuthority('ROLE_EDITOR') ?: new Role(authority: 'ROLE_EDITOR', description: 'editor').save(failOnError: true)
		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER', description: 'user').save(failOnError: true)

		def testUser = User.findByUsername('carlstaana') ?: new User(
			username: 'carlstaana',
			password: 'ap0ll0',
			retypePassword: 'ap0ll0',
			lastName: 'Sta.Ana',
			firstName: 'Carl',
			company: 'Apollo',
			position: 'Dev',
			enabled: true).save(failOnError: true)

		if (!testUser.authorities.contains(adminRole)) {
            UserRole.create testUser, adminRole
        }
		
		def testUser1 = User.findByUsername('rainiercruzado') ?: new User(
			username: 'rainiercruzado',
			password: 'ap0ll0',
			retypePassword: 'ap0ll0',
			lastName: 'Cruzado',
			firstName: 'Rainier',
			company: 'Apollo',
			position: 'Dev',
			enabled: true).save(failOnError: true)

		if (!testUser1.authorities.contains(adminRole)) {
			UserRole.create testUser1, adminRole
		}
		
		def testUser2 = User.findByUsername('pamelallorence') ?: new User(
			username: 'pamelallorence',
			password: 'ap0ll0',
			retypePassword: 'ap0ll0',
			lastName: 'Demafeliz',
			firstName: 'Pamela',
			company: 'Apollo',
			position: 'Dev',
			enabled: true).save(failOnError: true)

		if (!testUser2.authorities.contains(adminRole)) {
			UserRole.create testUser2, adminRole
		}
		
		def testUser3 = User.findByUsername('kristoferlora') ?: new User(
			username: 'kristoferlora',
			password: 'ap0ll0',
			retypePassword: 'ap0ll0',
			lastName: 'Lora',
			firstName: 'Kristofer',
			company: 'Apollo',
			position: 'Dev',
			enabled: true).save(failOnError: true)

		if (!testUser3.authorities.contains(adminRole)) {
			UserRole.create testUser3, adminRole
		}
		
		def testUser4 = User.findByUsername('jasperadlaon') ?: new User(
			username: 'jasperadlaon',
			password: 'ap0ll0',
			retypePassword: 'ap0ll0',
			lastName: 'Adlaon',
			firstName: 'Jasper',
			company: 'Apollo',
			position: 'Dev',
			enabled: true).save(failOnError: true)

		if (!testUser4.authorities.contains(adminRole)) {
			UserRole.create testUser4, adminRole
		}
		
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
