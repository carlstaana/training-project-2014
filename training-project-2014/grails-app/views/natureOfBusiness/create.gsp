<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'natureOfBusiness.label', default: 'Nature of Business')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.create.label" args="[entityName]" /></h1>
		<div id="create-natureOfBusiness" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${natureOfBusinessInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${natureOfBusinessInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:natureOfBusinessInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="save" class="save" value="${message(code: 'default.button.save.label', default: 'Save')}" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
