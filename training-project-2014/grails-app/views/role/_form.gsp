<%@ page import="com.apollo.training.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'authority', 'error')} required">
	<label for="authority">
		<g:message code="role.authority.label" default="Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="authority" required="" value="${roleInstance?.authority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="role.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${roleInstance?.description}"/>

</div>

