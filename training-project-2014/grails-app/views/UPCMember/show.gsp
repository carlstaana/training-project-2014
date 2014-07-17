
<%@ page import="com.apollo.training.UPCMember" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'UPCMember.label', default: 'UPC Member')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-UPCMember" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list UPCMember">
			
				<g:if test="${UPCMemberInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="UPCMember.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${UPCMemberInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.subCompanyName}">
				<li class="fieldcontain">
					<span id="subCompanyName-label" class="property-label"><g:message code="UPCMember.subCompanyName.label" default="Sub Company Name" /></span>
					
						<span class="property-value" aria-labelledby="subCompanyName-label"><g:fieldValue bean="${UPCMemberInstance}" field="subCompanyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="UPCMember.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${UPCMemberInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.municipality}">
				<li class="fieldcontain">
					<span id="municipality-label" class="property-label"><g:message code="UPCMember.municipality.label" default="Municipality" /></span>
					
						<span class="property-value" aria-labelledby="municipality-label"><g:fieldValue bean="${UPCMemberInstance}" field="municipality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="UPCMember.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${UPCMemberInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.province}">
				<li class="fieldcontain">
					<span id="province-label" class="property-label"><g:message code="UPCMember.province.label" default="Province" /></span>
					
						<span class="property-value" aria-labelledby="province-label"><g:fieldValue bean="${UPCMemberInstance}" field="province"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="UPCMember.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${UPCMemberInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="UPCMember.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${UPCMemberInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="UPCMember.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${UPCMemberInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="UPCMember.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${UPCMemberInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.purposeOfApplication}">
				<li class="fieldcontain">
					<span id="purposeOfApplication-label" class="property-label"><g:message code="UPCMember.purposeOfApplication.label" default="Purpose Of Application" /></span>
					
						<span class="property-value" aria-labelledby="purposeOfApplication-label"><g:fieldValue bean="${UPCMemberInstance}" field="purposeOfApplication"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcMembershipDate}">
				<li class="fieldcontain">
					<span id="upcMembershipDate-label" class="property-label"><g:message code="UPCMember.upcMembershipDate.label" default="Upc Membership Date" /></span>
					
						<span class="property-value" aria-labelledby="upcMembershipDate-label"><g:formatDate date="${UPCMemberInstance?.upcMembershipDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcCoordinatorName}">
				<li class="fieldcontain">
					<span id="upcCoordinatorName-label" class="property-label"><g:message code="UPCMember.upcCoordinatorName.label" default="Upc Coordinator Name" /></span>
					
						<span class="property-value" aria-labelledby="upcCoordinatorName-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcCoordinatorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcCoordinatorTitle}">
				<li class="fieldcontain">
					<span id="upcCoordinatorTitle-label" class="property-label"><g:message code="UPCMember.upcCoordinatorTitle.label" default="Upc Coordinator Title" /></span>
					
						<span class="property-value" aria-labelledby="upcCoordinatorTitle-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcCoordinatorTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcCoordinatorPhone}">
				<li class="fieldcontain">
					<span id="upcCoordinatorPhone-label" class="property-label"><g:message code="UPCMember.upcCoordinatorPhone.label" default="Upc Coordinator Phone" /></span>
					
						<span class="property-value" aria-labelledby="upcCoordinatorPhone-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcCoordinatorPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcCoordinatorFax}">
				<li class="fieldcontain">
					<span id="upcCoordinatorFax-label" class="property-label"><g:message code="UPCMember.upcCoordinatorFax.label" default="Upc Coordinator Fax" /></span>
					
						<span class="property-value" aria-labelledby="upcCoordinatorFax-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcCoordinatorFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcCoordinatorEmail}">
				<li class="fieldcontain">
					<span id="upcCoordinatorEmail-label" class="property-label"><g:message code="UPCMember.upcCoordinatorEmail.label" default="Upc Coordinator Email" /></span>
					
						<span class="property-value" aria-labelledby="upcCoordinatorEmail-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcCoordinatorEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcCode}">
				<li class="fieldcontain">
					<span id="upcCode-label" class="property-label"><g:message code="UPCMember.upcCode.label" default="Upc Code" /></span>
					
						<span class="property-value" aria-labelledby="upcCode-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcOrNumber}">
				<li class="fieldcontain">
					<span id="upcOrNumber-label" class="property-label"><g:message code="UPCMember.upcOrNumber.label" default="Upc Or Number" /></span>
					
						<span class="property-value" aria-labelledby="upcOrNumber-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcOrNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcOrDate}">
				<li class="fieldcontain">
					<span id="upcOrDate-label" class="property-label"><g:message code="UPCMember.upcOrDate.label" default="Upc Or Date" /></span>
					
						<span class="property-value" aria-labelledby="upcOrDate-label"><g:formatDate date="${UPCMemberInstance?.upcOrDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcAmountPaid}">
				<li class="fieldcontain">
					<span id="upcAmountPaid-label" class="property-label"><g:message code="UPCMember.upcAmountPaid.label" default="Upc Amount Paid" /></span>
					
						<span class="property-value" aria-labelledby="upcAmountPaid-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcAmountPaid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.upcPaymentRemarks}">
				<li class="fieldcontain">
					<span id="upcPaymentRemarks-label" class="property-label"><g:message code="UPCMember.upcPaymentRemarks.label" default="Upc Payment Remarks" /></span>
					
						<span class="property-value" aria-labelledby="upcPaymentRemarks-label"><g:fieldValue bean="${UPCMemberInstance}" field="upcPaymentRemarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${UPCMemberInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="UPCMember.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${UPCMemberInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${UPCMemberInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="UPCMember.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${UPCMemberInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form resource="${UPCMemberInstance}">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${UPCMemberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:if test="${UPCMemberInstance?.status == 'ADDED' || UPCMemberInstance?.status == 'EDITED'  || UPCMemberInstance?.status == 'REJECTED'}">
						<g:if test="${UPCMemberInstance?.status != 'REJECTED'}">
							<g:actionSubmit class="reject" action="option" value="${message(code: 'default.button.reject.label', default: 'Reject')}" onclick="return confirm('${message(code: 'default.button.reject.confirm.message', default: 'Are you sure you want to reject this membership?')}');" />
						</g:if>
						<g:actionSubmit class="approve" action="option" value="${message(code: 'default.button.approve.label', default: 'Approve')}" onclick="return confirm('${message(code: 'default.button.approve.confirm.message', default: 'Are you sure you want to approve this membership?')}');" />
					</g:if>
					<g:elseif test="${UPCMemberInstance?.status == 'APPROVED'}">
						<g:actionSubmit class="cancelstatus" action="option" value="${message(code: 'default.button.cancel.membership.label', default: 'Cancel UPC Member')}" onclick="return confirm('${message(code: 'default.button.cancel.confirm.message', default: 'Are you sure you want to cancel this membership?')}');" />
					</g:elseif>
					<g:elseif test="${UPCMemberInstance?.status == 'CANCELLED'}">
						<g:actionSubmit class="reactivate" action="option" value="${message(code: 'default.button.reactivate.label', default: 'Reactivate')}" onclick="return confirm('${message(code: 'default.button.reactivate.confirm.message', default: 'Are you sure you want to reactivate this membership?')}');" />
					</g:elseif>
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
