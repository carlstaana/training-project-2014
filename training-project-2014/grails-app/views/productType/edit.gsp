<%@ page import="com.apollo.training.ProductType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productType.label', default: 'Product Type')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-productType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<h1><g:message message="${entityName}" /></h1>
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.add.label" args="[entityName]" /></g:link></li>
				<li><g:link class="edit" action="index"><g:message code="default.edit.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-productType" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${productTypeInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productTypeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:productTypeInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${productTypeInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>