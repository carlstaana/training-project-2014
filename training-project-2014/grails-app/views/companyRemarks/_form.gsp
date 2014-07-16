<%@ page import="com.apollo.training.CompanyRemarks" %>



<div class="fieldcontain ${hasErrors(bean: companyRemarksInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="companyRemarks.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="message" required="" value="${companyRemarksInstance?.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyRemarksInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="companyRemarks.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.apollo.training.Company.list()}" optionKey="id" required="" value="${companyRemarksInstance?.company?.id}" class="many-to-one" />

</div>

