<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'download.label', default: 'Download')}" />
		<title>Upload New File</title>
</head>
	<body>
		<div id="module">
		<h1>Upload File</h1>
		<div id="create-download" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:if test="${flash.error}">
				<div class="errors">
					${flash.error}
				</div>
			</g:if>
			<g:hasErrors bean="${downloadInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${downloadInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:downloadInstance, action:'save']"  enctype="multipart/form-data">
				<fieldset class="form">
				<div id="uploads">
					<g:render template="form"/> 
				</div>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Upload" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
