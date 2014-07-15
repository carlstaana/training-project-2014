<%@ page import="com.apollo.training.ProductType" %>



<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="productType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="100" required="" value="${productTypeInstance?.name}"/>

</div>

