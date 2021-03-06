
<%@ page import="com.apollo.training.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-user" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="user.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="user.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.middleInitial}">
				<li class="fieldcontain">
					<span id="middleInitial-label" class="property-label"><g:message code="user.middleInitial.label" default="Middle Initial" /></span>
					
						<span class="property-value" aria-labelledby="middleInitial-label"><g:fieldValue bean="${userInstance}" field="middleInitial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="user.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${userInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="user.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${userInstance}" field="position"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.telephoneNumber}">
				<li class="fieldcontain">
					<span id="telephoneNumber-label" class="property-label"><g:message code="user.telephoneNumber.label" default="Telephone Number" /></span>
					
						<span class="property-value" aria-labelledby="telephoneNumber-label"><g:fieldValue bean="${userInstance}" field="telephoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="user.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${userInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
