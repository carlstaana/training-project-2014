<%@ page import="com.apollo.training.CompanyPayment" %>



<div class="fieldcontain ${hasErrors(bean: companyPaymentInstance, field: 'membershipFee', 'error')} required">
	<label for="membershipFee">
		<g:message code="companyPayment.membershipFee.label" default="Membership Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="membershipFee" type="number" value="${companyPaymentInstance.membershipFee}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyPaymentInstance, field: 'seminarFee', 'error')} required">
	<label for="seminarFee">
		<g:message code="companyPayment.seminarFee.label" default="Seminar Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="seminarFee" type="number" value="${companyPaymentInstance.seminarFee}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyPaymentInstance, field: 'entranceFee', 'error')} required">
	<label for="entranceFee">
		<g:message code="companyPayment.entranceFee.label" default="Entrance Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="entranceFee" type="number" value="${companyPaymentInstance.entranceFee}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyPaymentInstance, field: 'orNo', 'error')} ">
	<label for="orNo">
		<g:message code="companyPayment.orNo.label" default="Or No" />
		
	</label>
	<g:textField name="orNo" value="${companyPaymentInstance?.orNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyPaymentInstance, field: 'orDate', 'error')} ">
	<label for="orDate">
		<g:message code="companyPayment.orDate.label" default="Or Date" />
		
	</label>
	<g:datePicker name="orDate" precision="day"  value="${companyPaymentInstance?.orDate}" default="none" noSelection="['': 'Select']" />

</div>

<div class="fieldcontain ${hasErrors(bean: companyPaymentInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="companyPayment.remarks.label" default="Remarks" />
		
	</label>
	<g:textArea name="remarks" value="${companyPaymentInstance?.remarks}"/>

</div>

<g:hiddenField id="company" name="company.id" value="${params.company.id}"/>


