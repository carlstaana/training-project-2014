
<%@ page import="com.apollo.training.EAN8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'EAN8.label', default: 'EAN8')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-EAN8" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list EAN8">
			
				<g:if test="${EAN8Instance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="EAN8.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${EAN8Instance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.gln}">
				<li class="fieldcontain">
					<span id="gln-label" class="property-label"><g:message code="EAN8.gln.label" default="Gln" /></span>
					
						<span class="property-value" aria-labelledby="gln-label"><g:fieldValue bean="${EAN8Instance}" field="gln"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.prefix}">
				<li class="fieldcontain">
					<span id="prefix-label" class="property-label"><g:message code="EAN8.prefix.label" default="Prefix" /></span>
					
						<span class="property-value" aria-labelledby="prefix-label"><g:fieldValue bean="${EAN8Instance}" field="prefix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.contactPerson}">
				<li class="fieldcontain">
					<span id="contactPerson-label" class="property-label"><g:message code="EAN8.contactPerson.label" default="Contact Person" /></span>
					
						<span class="property-value" aria-labelledby="contactPerson-label"><g:fieldValue bean="${EAN8Instance}" field="contactPerson"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.ean8Number}">
				<li class="fieldcontain">
					<span id="ean8Number-label" class="property-label"><g:message code="EAN8.ean8Number.label" default="Ean8 Number" /></span>
					
						<span class="property-value" aria-labelledby="ean8Number-label"><g:fieldValue bean="${EAN8Instance}" field="ean8Number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="EAN8.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${EAN8Instance}" field="brand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.sku}">
				<li class="fieldcontain">
					<span id="sku-label" class="property-label"><g:message code="EAN8.sku.label" default="Sku" /></span>
					
						<span class="property-value" aria-labelledby="sku-label"><g:fieldValue bean="${EAN8Instance}" field="sku"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.issueNumber}">
				<li class="fieldcontain">
					<span id="issueNumber-label" class="property-label"><g:message code="EAN8.issueNumber.label" default="Issue Number" /></span>
					
						<span class="property-value" aria-labelledby="issueNumber-label"><g:fieldValue bean="${EAN8Instance}" field="issueNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.temporaryIssueDate}">
				<li class="fieldcontain">
					<span id="temporaryIssueDate-label" class="property-label"><g:message code="EAN8.temporaryIssueDate.label" default="Temporary Issue Date" /></span>
					
						<span class="property-value" aria-labelledby="temporaryIssueDate-label"><g:formatDate date="${EAN8Instance?.temporaryIssueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.permanentIssueDate}">
				<li class="fieldcontain">
					<span id="permanentIssueDate-label" class="property-label"><g:message code="EAN8.permanentIssueDate.label" default="Permanent Issue Date" /></span>
					
						<span class="property-value" aria-labelledby="permanentIssueDate-label"><g:formatDate date="${EAN8Instance?.permanentIssueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.orNumber}">
				<li class="fieldcontain">
					<span id="orNumber-label" class="property-label"><g:message code="EAN8.orNumber.label" default="Or Number" /></span>
					
						<span class="property-value" aria-labelledby="orNumber-label"><g:fieldValue bean="${EAN8Instance}" field="orNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.amountPaid}">
				<li class="fieldcontain">
					<span id="amountPaid-label" class="property-label"><g:message code="EAN8.amountPaid.label" default="Amount Paid" /></span>
					
						<span class="property-value" aria-labelledby="amountPaid-label"><g:fieldValue bean="${EAN8Instance}" field="amountPaid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.datePaid}">
				<li class="fieldcontain">
					<span id="datePaid-label" class="property-label"><g:message code="EAN8.datePaid.label" default="Date Paid" /></span>
					
						<span class="property-value" aria-labelledby="datePaid-label"><g:formatDate date="${EAN8Instance?.datePaid}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.paymentRemarks}">
				<li class="fieldcontain">
					<span id="paymentRemarks-label" class="property-label"><g:message code="EAN8.paymentRemarks.label" default="Payment Remarks" /></span>
					
						<span class="property-value" aria-labelledby="paymentRemarks-label"><g:fieldValue bean="${EAN8Instance}" field="paymentRemarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.unitSize}">
				<li class="fieldcontain">
					<span id="unitSize-label" class="property-label"><g:message code="EAN8.unitSize.label" default="Unit Size" /></span>
					
						<span class="property-value" aria-labelledby="unitSize-label"><g:fieldValue bean="${EAN8Instance}" field="unitSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.productContainer}">
				<li class="fieldcontain">
					<span id="productContainer-label" class="property-label"><g:message code="EAN8.productContainer.label" default="Product Container" /></span>
					
						<span class="property-value" aria-labelledby="productContainer-label"><g:fieldValue bean="${EAN8Instance}" field="productContainer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.label}">
				<li class="fieldcontain">
					<span id="label-label" class="property-label"><g:message code="EAN8.label.label" default="Label" /></span>
					
						<span class="property-value" aria-labelledby="label-label"><g:fieldValue bean="${EAN8Instance}" field="label"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.totalPrintArea}">
				<li class="fieldcontain">
					<span id="totalPrintArea-label" class="property-label"><g:message code="EAN8.totalPrintArea.label" default="Total Print Area" /></span>
					
						<span class="property-value" aria-labelledby="totalPrintArea-label"><g:fieldValue bean="${EAN8Instance}" field="totalPrintArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.dateGiven}">
				<li class="fieldcontain">
					<span id="dateGiven-label" class="property-label"><g:message code="EAN8.dateGiven.label" default="Date Given" /></span>
					
						<span class="property-value" aria-labelledby="dateGiven-label"><g:formatDate date="${EAN8Instance?.dateGiven}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${EAN8Instance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="EAN8.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${EAN8Instance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:EAN8Instance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${EAN8Instance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
