<%@ page import="com.apollo.training.EAN8" %>



<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="EAN8.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="company" required="" value="${EAN8Instance?.company}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'gln', 'error')} ">
	<label for="gln">
		<g:message code="EAN8.gln.label" default="Gln" />
		
	</label>
	<g:field name="gln" type="number" value="${EAN8Instance.gln}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'prefix', 'error')} ">
	<label for="prefix">
		<g:message code="EAN8.prefix.label" default="Prefix" />
		
	</label>
	<g:field name="prefix" type="number" value="${EAN8Instance.prefix}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'contactPerson', 'error')} ">
	<label for="contactPerson">
		<g:message code="EAN8.contactPerson.label" default="Contact Person" />
		
	</label>
	<g:textField name="contactPerson" value="${EAN8Instance?.contactPerson}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'ean8Number', 'error')} required">
	<label for="ean8Number">
		<g:message code="EAN8.ean8Number.label" default="Ean8 Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ean8Number" value="${fieldValue(bean: EAN8Instance, field: 'ean8Number')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="EAN8.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="brand" required="" value="${EAN8Instance?.brand}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'sku', 'error')} required">
	<label for="sku">
		<g:message code="EAN8.sku.label" default="Sku" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sku" required="" value="${EAN8Instance?.sku}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'issueNumber', 'error')} ">
	<label for="issueNumber">
		<g:message code="EAN8.issueNumber.label" default="Issue Number" />
		
	</label>
	<g:textField name="issueNumber" value="${EAN8Instance?.issueNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'temporaryIssueDate', 'error')} ">
	<label for="temporaryIssueDate">
		<g:message code="EAN8.temporaryIssueDate.label" default="Temporary Issue Date" />
		
	</label>
	<g:datePicker name="temporaryIssueDate" precision="day"  value="${EAN8Instance?.temporaryIssueDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'permanentIssueDate', 'error')} ">
	<label for="permanentIssueDate">
		<g:message code="EAN8.permanentIssueDate.label" default="Permanent Issue Date" />
		
	</label>
	<g:datePicker name="permanentIssueDate" precision="day"  value="${EAN8Instance?.permanentIssueDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'orNumber', 'error')} ">
	<label for="orNumber">
		<g:message code="EAN8.orNumber.label" default="Or Number" />
		
	</label>
	<g:textField name="orNumber" value="${EAN8Instance?.orNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'amountPaid', 'error')} ">
	<label for="amountPaid">
		<g:message code="EAN8.amountPaid.label" default="Amount Paid" />
		
	</label>
	<g:field name="amountPaid" value="${fieldValue(bean: EAN8Instance, field: 'amountPaid')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'datePaid', 'error')} ">
	<label for="datePaid">
		<g:message code="EAN8.datePaid.label" default="Date Paid" />
		
	</label>
	<g:datePicker name="datePaid" precision="day"  value="${EAN8Instance?.datePaid}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'paymentRemarks', 'error')} ">
	<label for="paymentRemarks">
		<g:message code="EAN8.paymentRemarks.label" default="Payment Remarks" />
		
	</label>
	<g:textField name="paymentRemarks" value="${EAN8Instance?.paymentRemarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'unitSize', 'error')} ">
	<label for="unitSize">
		<g:message code="EAN8.unitSize.label" default="Unit Size" />
		
	</label>
	<g:textField name="unitSize" value="${EAN8Instance?.unitSize}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'productContainer', 'error')} ">
	<label for="productContainer">
		<g:message code="EAN8.productContainer.label" default="Product Container" />
		
	</label>
	<g:textField name="productContainer" value="${EAN8Instance?.productContainer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'label', 'error')} ">
	<label for="label">
		<g:message code="EAN8.label.label" default="Label" />
		
	</label>
	<g:textField name="label" value="${EAN8Instance?.label}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'totalPrintArea', 'error')} ">
	<label for="totalPrintArea">
		<g:message code="EAN8.totalPrintArea.label" default="Total Print Area" />
		
	</label>
	<g:textField name="totalPrintArea" value="${EAN8Instance?.totalPrintArea}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'dateGiven', 'error')} ">
	<label for="dateGiven">
		<g:message code="EAN8.dateGiven.label" default="Date Given" />
		
	</label>
	<g:datePicker name="dateGiven" precision="day"  value="${EAN8Instance?.dateGiven}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: EAN8Instance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="EAN8.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${EAN8Instance?.remarks}"/>

</div>

