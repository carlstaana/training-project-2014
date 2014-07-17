<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'download.label', default: 'Download')}" />
		<title>Upload New File</title>
		<%--<g:javascript>
		var i = 1;
		function addUpload(){
			if (i < 5){
				i++;
				var div = document.createElement('div');
				div.setAttribute('id','uploadForm_'+i)
				if(i<4){
					div.innerHTML = '<div class="fieldcontain ${hasErrors(bean: downloadInstance, field: 'file', 'error')} required"><label for="file"><g:message code="download.file.label" default="File" /><span class="required-indicator">*</span></label><input type="file" name="file_'+i+'" id="file_'+i+'" accept="text/plain" required=""/></div><div class="fieldcontain ${hasErrors(bean: downloadInstance, field: 'description','error')} "><label for="description"><g:message code="download.description.label" default="Description" /><span class="required-indicator">*</span></label><g:textField name="description_'+i+'" required=""/></div>';
				}else{
					div.innerHTML = '<div class="fieldcontain ${hasErrors(bean: downloadInstance, field: 'file', 'error')} required"><label for="file"><g:message code="download.file.label" default="File" /><span class="required-indicator">*</span></label><input type="file" name="file_'+i+'" id="file_'+i+'" accept="text/plain" required=""/></div><div class="fieldcontain ${hasErrors(bean: downloadInstance, field: 'description','error')} "><label for="description"><g:message code="download.description.label" default="Description" /><span class="required-indicator">*</span></label><g:textField name="description_'+i+'" required=""/></div>';
				}
				document.getElementById('uploads').appendChild( div );
			}
		}
		
		function removeUpload(div){
			if(i>1){
				document.getElementById('uploadForm_'+i).remove();
				i--;
			}
		}
		</g:javascript>
	--%></head>
	<body>
		<a href="#create-download" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-download" class="content scaffold-create" role="main">
			<h1>Upload File</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
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
					<%--<input type="button" id="addUpload()" onClick="addUpload()" value="Add File" />
					<input type="button" id="removeUpload()" onClick="removeUpload()" value="Remove"/>
				--%></fieldset>
			</g:form>
		</div>
	</body>
</html>
