<%@ page import="com.apollo.training.CompanyRemarks" %>



<div class="fieldcontain ${hasErrors(bean: companyRemarksInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="companyRemarks.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="message" required="" value="${companyRemarksInstance?.message}"/>

</div>

<g:hiddenField id="company" name="company.id" value="${params.company.id}"/>

