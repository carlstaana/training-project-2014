<%@ page import="com.apollo.training.NatureOfBusiness" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'natureOfBusiness.label', default: 'Nature of Business')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-natureOfBusiness" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list natureOfBusiness">
			
				<g:if test="${natureOfBusinessInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="natureOfBusiness.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${natureOfBusinessInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:natureOfBusinessInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${natureOfBusinessInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
