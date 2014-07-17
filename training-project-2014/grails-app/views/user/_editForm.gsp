<%@ page import="com.apollo.training.User"%>



<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username"> <g:message code="user.username.label"
			default="Username" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required=""
		value="${userInstance?.username}" />

</div>

<%--<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password"> <g:message code="user.password.label"
			default="Password" /> <span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required=""
		value="${userInstance?.password}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'retypePassword', 'error')} required">
	<label for="retypePassword"> <g:message
			code="user.retypePassword.label" default="Retype Password" /> <span
		class="required-indicator">*</span>
	</label>
	<g:field type="password" name="retypePassword" required=""
		value="${userInstance?.retypePassword}" />

</div>

--%>

<div>
	<p>
		<g:link controller="user" action="changePassword">Change Password</g:link>
	</p>
</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName"> <g:message code="user.lastName.label"
			default="Last Name" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required=""
		value="${userInstance?.lastName}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName"> <g:message code="user.firstName.label"
			default="First Name" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required=""
		value="${userInstance?.firstName}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'middleInitial', 'error')} ">
	<label for="middleInitial"> <g:message
			code="user.middleInitial.label" default="Middle Initial" />

	</label>
	<g:textField name="middleInitial"
		value="${userInstance?.middleInitial}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'company', 'error')} required">
	<label for="company"> <g:message code="user.company.label"
			default="Company" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="company" required=""
		value="${userInstance?.company}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'position', 'error')} required">
	<label for="position"> <g:message code="user.position.label"
			default="Position" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="position" required=""
		value="${userInstance?.position}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'telephoneNumber', 'error')} ">
	<label for="telephoneNumber"> <g:message
			code="user.telephoneNumber.label" default="Telephone Number" />

	</label>
	<g:textField name="telephoneNumber"
		value="${userInstance?.telephoneNumber}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'emailAddress', 'error')} ">
	<label for="emailAddress"> <g:message
			code="user.emailAddress.label" default="Email Address" />

	</label>
	<g:textField name="emailAddress" value="${userInstance?.emailAddress}" />

</div>

<div>
	<label>Role: </label>
	<sec:ifAllGranted roles="ROLE_ADMIN">
		<g:select name="role"
			from="${['ROLE_USER', 'ROLE_EDITOR', 'ROLE_ADMIN']}"
			value='ROLE_USER' />
	</sec:ifAllGranted>

	<sec:ifNotLoggedIn>
		<div class="hidden">
			<g:textField name="role" value="ROLE_USER" />
		</div>
	</sec:ifNotLoggedIn>
</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired"> <g:message
			code="user.accountExpired.label" default="Account Expired" />

	</label>
	<g:checkBox name="accountExpired"
		value="${userInstance?.accountExpired}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked"> <g:message
			code="user.accountLocked.label" default="Account Locked" />

	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled"> <g:message code="user.enabled.label"
			default="Enabled" />

	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired"> <g:message
			code="user.passwordExpired.label" default="Password Expired" />

	</label>
	<g:checkBox name="passwordExpired"
		value="${userInstance?.passwordExpired}" />

</div>

