<%@ page import="com.apollo.training.Download" %>


<div class="fieldcontain ${hasErrors(bean: downloadInstance, field: 'file', 'error')} required">
	<label for="file">
		<g:message code="download.file.label" default="File" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" name="file" id="file" accept="text/plain, .csv" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: downloadInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="download.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" value="${downloadInstance?.description}" required=""/>

</div>


