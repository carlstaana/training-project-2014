
<%@ page import="com.apollo.training.Download" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'download.label', default: 'Download')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-download" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list download">
			
				<g:if test="${downloadInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="download.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${downloadInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${downloadInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="download.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${downloadInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${downloadInstance?.filePath}">
				<li class="fieldcontain">
					<span class="property-value"><g:link action="download" id="${ downloadInstance.id }">Download File</g:link></span>
				</li>
				</g:if>
			</ol>
			<g:form url="[resource:downloadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${downloadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
