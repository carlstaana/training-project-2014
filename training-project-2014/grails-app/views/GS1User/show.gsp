
<%@ page import="com.apollo.training.GS1User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'GS1User.label', default: 'GS1User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-GS1User" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list GS1User">
			
				<g:if test="${GS1UserInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="GS1User.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${GS1UserInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="GS1User.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${GS1UserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.retypePassword}">
				<li class="fieldcontain">
					<span id="retypePassword-label" class="property-label"><g:message code="GS1User.retypePassword.label" default="Retype Password" /></span>
					
						<span class="property-value" aria-labelledby="retypePassword-label"><g:fieldValue bean="${GS1UserInstance}" field="retypePassword"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="GS1User.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${GS1UserInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.firstname}">
				<li class="fieldcontain">
					<span id="firstname-label" class="property-label"><g:message code="GS1User.firstname.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="firstname-label"><g:fieldValue bean="${GS1UserInstance}" field="firstname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.middleInitial}">
				<li class="fieldcontain">
					<span id="middleInitial-label" class="property-label"><g:message code="GS1User.middleInitial.label" default="Middle Initial" /></span>
					
						<span class="property-value" aria-labelledby="middleInitial-label"><g:fieldValue bean="${GS1UserInstance}" field="middleInitial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="GS1User.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${GS1UserInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="GS1User.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${GS1UserInstance}" field="position"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.telephoneNumber}">
				<li class="fieldcontain">
					<span id="telephoneNumber-label" class="property-label"><g:message code="GS1User.telephoneNumber.label" default="Telephone Number" /></span>
					
						<span class="property-value" aria-labelledby="telephoneNumber-label"><g:fieldValue bean="${GS1UserInstance}" field="telephoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="GS1User.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${GS1UserInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GS1UserInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="GS1User.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${GS1UserInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:GS1UserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${GS1UserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
