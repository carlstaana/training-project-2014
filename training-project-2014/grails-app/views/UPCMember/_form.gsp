<%@ page import="com.apollo.training.UPCMember" %>



<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'companyName', 'error')} required">
	<label for="companyName">
		<g:message code="UPCMember.companyName.label" default="Company Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyName" maxlength="100" required="" value="${UPCMemberInstance?.companyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'subCompanyName', 'error')} ">
	<label for="subCompanyName">
		<g:message code="UPCMember.subCompanyName.label" default="Sub Company Name" />
		
	</label>
	<g:textField name="subCompanyName" maxlength="100" value="${UPCMemberInstance?.subCompanyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="UPCMember.address.label" default="Address" />
		
	</label>
	<g:textField name="address" maxlength="100" value="${UPCMemberInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'municipality', 'error')} ">
	<label for="municipality">
		<g:message code="UPCMember.municipality.label" default="Municipality" />
		
	</label>
	<g:textField name="municipality" maxlength="100" value="${UPCMemberInstance?.municipality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="UPCMember.city.label" default="City" />
		
	</label>
	<g:textField name="city" maxlength="100" value="${UPCMemberInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'province', 'error')} ">
	<label for="province">
		<g:message code="UPCMember.province.label" default="Province" />
		
	</label>
	<g:textField name="province" maxlength="100" value="${UPCMemberInstance?.province}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="UPCMember.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" pattern="${UPCMemberInstance.constraints.zipCode.matches}" value="${UPCMemberInstance?.zipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="UPCMember.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" pattern="${UPCMemberInstance.constraints.phone.matches}" value="${UPCMemberInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="UPCMember.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" pattern="${UPCMemberInstance.constraints.fax.matches}" value="${UPCMemberInstance?.fax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="UPCMember.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${UPCMemberInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'purposeOfApplication', 'error')} ">
	<label for="purposeOfApplication">
		<g:message code="UPCMember.purposeOfApplication.label" default="Purpose Of Application" />
		
	</label>
	<g:textArea name="purposeOfApplication" cols="40" rows="5" maxlength="255" value="${UPCMemberInstance?.purposeOfApplication}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcMembershipDate', 'error')} ">
	<label for="upcMembershipDate">
		<g:message code="UPCMember.upcMembershipDate.label" default="Upc Membership Date" />
		
	</label>
	<g:datePicker name="upcMembershipDate" precision="day"  value="${UPCMemberInstance?.upcMembershipDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcCoordinatorName', 'error')} required">
	<label for="upcCoordinatorName">
		<g:message code="UPCMember.upcCoordinatorName.label" default="Upc Coordinator Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="upcCoordinatorName" maxlength="100" required="" value="${UPCMemberInstance?.upcCoordinatorName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcCoordinatorTitle', 'error')} ">
	<label for="upcCoordinatorTitle">
		<g:message code="UPCMember.upcCoordinatorTitle.label" default="Upc Coordinator Title" />
		
	</label>
	<g:textField name="upcCoordinatorTitle" maxlength="100" value="${UPCMemberInstance?.upcCoordinatorTitle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcCoordinatorPhone', 'error')} required">
	<label for="upcCoordinatorPhone">
		<g:message code="UPCMember.upcCoordinatorPhone.label" default="Upc Coordinator Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="upcCoordinatorPhone" pattern="${UPCMemberInstance.constraints.upcCoordinatorPhone.matches}" required="" value="${UPCMemberInstance?.upcCoordinatorPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcCoordinatorFax', 'error')} ">
	<label for="upcCoordinatorFax">
		<g:message code="UPCMember.upcCoordinatorFax.label" default="Upc Coordinator Fax" />
		
	</label>
	<g:textField name="upcCoordinatorFax" pattern="${UPCMemberInstance.constraints.upcCoordinatorFax.matches}" value="${UPCMemberInstance?.upcCoordinatorFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcCoordinatorEmail', 'error')} ">
	<label for="upcCoordinatorEmail">
		<g:message code="UPCMember.upcCoordinatorEmail.label" default="Upc Coordinator Email" />
		
	</label>
	<g:field type="email" name="upcCoordinatorEmail" value="${UPCMemberInstance?.upcCoordinatorEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcCode', 'error')} ">
	<label for="upcCode">
		<g:message code="UPCMember.upcCode.label" default="Upc Code" />
		
	</label>
	<g:textField name="upcCode" pattern="${UPCMemberInstance.constraints.upcCode.matches}" value="${UPCMemberInstance?.upcCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcOrNumber', 'error')} ">
	<label for="upcOrNumber">
		<g:message code="UPCMember.upcOrNumber.label" default="Upc Or Number" />
		
	</label>
	<g:textField name="upcOrNumber" maxlength="100" value="${UPCMemberInstance?.upcOrNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcOrDate', 'error')} ">
	<label for="upcOrDate">
		<g:message code="UPCMember.upcOrDate.label" default="Upc Or Date" />
		
	</label>
	<g:datePicker name="upcOrDate" precision="day"  value="${UPCMemberInstance?.upcOrDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcAmountPaid', 'error')} ">
	<label for="upcAmountPaid">
		<g:message code="UPCMember.upcAmountPaid.label" default="Upc Amount Paid" />
		
	</label>
	<g:field name="upcAmountPaid" value="${fieldValue(bean: UPCMemberInstance, field: 'upcAmountPaid')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'upcPaymentRemarks', 'error')} ">
	<label for="upcPaymentRemarks">
		<g:message code="UPCMember.upcPaymentRemarks.label" default="Upc Payment Remarks" />
		
	</label>
	<g:textArea name="upcPaymentRemarks" cols="40" rows="5" maxlength="255" value="${UPCMemberInstance?.upcPaymentRemarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: UPCMemberInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="UPCMember.remarks.label" default="Remarks" />
		
	</label>
	<g:textArea name="remarks" cols="40" rows="5" maxlength="255" value="${UPCMemberInstance?.remarks}"/>

</div>

