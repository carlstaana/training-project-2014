<%@ page import="com.apollo.training.BatchPayment" %>



<div class="fieldcontain ${hasErrors(bean: batchPaymentInstance, field: 'membershipCategory', 'error')} required">
	<label for="membershipCategory">
		<g:message code="batchPayment.membershipCategory.label" default="Membership Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="membershipCategory" from="${batchPaymentInstance.constraints.membershipCategory.inList}" required="" value="${batchPaymentInstance?.membershipCategory}" valueMessagePrefix="batchPayment.membershipCategory"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchPaymentInstance, field: 'membershipDate', 'error')} ">
	<label for="membershipDate">
		<g:message code="batchPayment.membershipDate.label" default="Membership Date" />
		
	</label>
	<g:datePicker name="membershipDate" precision="day"  value="${batchPaymentInstance?.membershipDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: batchPaymentInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="batchPayment.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${batchPaymentInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: batchPaymentInstance, field: 'balance', 'error')} required">
	<label for="balance">
		<g:message code="batchPayment.balance.label" default="Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="balance" type="number" value="${batchPaymentInstance.balance}" required=""/>

</div>

