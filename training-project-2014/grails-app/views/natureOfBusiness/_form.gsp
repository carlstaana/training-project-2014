<%@ page import="com.apollo.training.NatureOfBusiness" %>



<div class="fieldcontain ${hasErrors(bean: natureOfBusinessInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="natureOfBusiness.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="100" required="" value="${natureOfBusinessInstance?.name}"/>

</div>

