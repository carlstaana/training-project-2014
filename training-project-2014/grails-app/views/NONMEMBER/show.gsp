
<%@ page import="com.apollo.training.NONMEMBER" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'NONMEMBER.label', default: 'NONMEMBER')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-NONMEMBER" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list NONMEMBER">
			
				<g:if test="${NONMEMBERInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="NONMEMBER.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${NONMEMBERInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.gln}">
				<li class="fieldcontain">
					<span id="gln-label" class="property-label"><g:message code="NONMEMBER.gln.label" default="Gln" /></span>
					
						<span class="property-value" aria-labelledby="gln-label"><g:fieldValue bean="${NONMEMBERInstance}" field="gln"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="NONMEMBER.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${NONMEMBERInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.municipality}">
				<li class="fieldcontain">
					<span id="municipality-label" class="property-label"><g:message code="NONMEMBER.municipality.label" default="Municipality" /></span>
					
						<span class="property-value" aria-labelledby="municipality-label"><g:fieldValue bean="${NONMEMBERInstance}" field="municipality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="NONMEMBER.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${NONMEMBERInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.province}">
				<li class="fieldcontain">
					<span id="province-label" class="property-label"><g:message code="NONMEMBER.province.label" default="Province" /></span>
					
						<span class="property-value" aria-labelledby="province-label"><g:fieldValue bean="${NONMEMBERInstance}" field="province"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="NONMEMBER.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${NONMEMBERInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="NONMEMBER.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${NONMEMBERInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="NONMEMBER.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${NONMEMBERInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="NONMEMBER.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${NONMEMBERInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="NONMEMBER.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${NONMEMBERInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.reasonForApplyingGLN}">
				<li class="fieldcontain">
					<span id="reasonForApplyingGLN-label" class="property-label"><g:message code="NONMEMBER.reasonForApplyingGLN.label" default="Reason For Applying GLN" /></span>
					
						<span class="property-value" aria-labelledby="reasonForApplyingGLN-label"><g:fieldValue bean="${NONMEMBERInstance}" field="reasonForApplyingGLN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.tradingPartners}">
				<li class="fieldcontain">
					<span id="tradingPartners-label" class="property-label"><g:message code="NONMEMBER.tradingPartners.label" default="Trading Partners" /></span>
					
						<span class="property-value" aria-labelledby="tradingPartners-label"><g:fieldValue bean="${NONMEMBERInstance}" field="tradingPartners"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.communicationNetworkUsed}">
				<li class="fieldcontain">
					<span id="communicationNetworkUsed-label" class="property-label"><g:message code="NONMEMBER.communicationNetworkUsed.label" default="Communication Network Used" /></span>
					
						<span class="property-value" aria-labelledby="communicationNetworkUsed-label"><g:fieldValue bean="${NONMEMBERInstance}" field="communicationNetworkUsed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.providerName}">
				<li class="fieldcontain">
					<span id="providerName-label" class="property-label"><g:message code="NONMEMBER.providerName.label" default="Provider Name" /></span>
					
						<span class="property-value" aria-labelledby="providerName-label"><g:fieldValue bean="${NONMEMBERInstance}" field="providerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.thruEmailInternetOthersLikeVAN}">
				<li class="fieldcontain">
					<span id="thruEmailInternetOthersLikeVAN-label" class="property-label"><g:message code="NONMEMBER.thruEmailInternetOthersLikeVAN.label" default="Thru Email Internet Others Like VAN" /></span>
					
						<span class="property-value" aria-labelledby="thruEmailInternetOthersLikeVAN-label"><g:fieldValue bean="${NONMEMBERInstance}" field="thruEmailInternetOthersLikeVAN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.ebxmlEDI}">
				<li class="fieldcontain">
					<span id="ebxmlEDI-label" class="property-label"><g:message code="NONMEMBER.ebxmlEDI.label" default="Ebxml EDI" /></span>
					
						<span class="property-value" aria-labelledby="ebxmlEDI-label"><g:fieldValue bean="${NONMEMBERInstance}" field="ebxmlEDI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.businessMessageUsed}">
				<li class="fieldcontain">
					<span id="businessMessageUsed-label" class="property-label"><g:message code="NONMEMBER.businessMessageUsed.label" default="Business Message Used" /></span>
					
						<span class="property-value" aria-labelledby="businessMessageUsed-label"><g:fieldValue bean="${NONMEMBERInstance}" field="businessMessageUsed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.ediMessageStandardUsed}">
				<li class="fieldcontain">
					<span id="ediMessageStandardUsed-label" class="property-label"><g:message code="NONMEMBER.ediMessageStandardUsed.label" default="Edi Message Standard Used" /></span>
					
						<span class="property-value" aria-labelledby="ediMessageStandardUsed-label"><g:fieldValue bean="${NONMEMBERInstance}" field="ediMessageStandardUsed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.headName}">
				<li class="fieldcontain">
					<span id="headName-label" class="property-label"><g:message code="NONMEMBER.headName.label" default="Head Name" /></span>
					
						<span class="property-value" aria-labelledby="headName-label"><g:fieldValue bean="${NONMEMBERInstance}" field="headName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.designation}">
				<li class="fieldcontain">
					<span id="designation-label" class="property-label"><g:message code="NONMEMBER.designation.label" default="Designation" /></span>
					
						<span class="property-value" aria-labelledby="designation-label"><g:fieldValue bean="${NONMEMBERInstance}" field="designation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.techName}">
				<li class="fieldcontain">
					<span id="techName-label" class="property-label"><g:message code="NONMEMBER.techName.label" default="Tech Name" /></span>
					
						<span class="property-value" aria-labelledby="techName-label"><g:fieldValue bean="${NONMEMBERInstance}" field="techName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.techTitle}">
				<li class="fieldcontain">
					<span id="techTitle-label" class="property-label"><g:message code="NONMEMBER.techTitle.label" default="Tech Title" /></span>
					
						<span class="property-value" aria-labelledby="techTitle-label"><g:fieldValue bean="${NONMEMBERInstance}" field="techTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.techPhone}">
				<li class="fieldcontain">
					<span id="techPhone-label" class="property-label"><g:message code="NONMEMBER.techPhone.label" default="Tech Phone" /></span>
					
						<span class="property-value" aria-labelledby="techPhone-label"><g:fieldValue bean="${NONMEMBERInstance}" field="techPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.techFax}">
				<li class="fieldcontain">
					<span id="techFax-label" class="property-label"><g:message code="NONMEMBER.techFax.label" default="Tech Fax" /></span>
					
						<span class="property-value" aria-labelledby="techFax-label"><g:fieldValue bean="${NONMEMBERInstance}" field="techFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.techEmail}">
				<li class="fieldcontain">
					<span id="techEmail-label" class="property-label"><g:message code="NONMEMBER.techEmail.label" default="Tech Email" /></span>
					
						<span class="property-value" aria-labelledby="techEmail-label"><g:fieldValue bean="${NONMEMBERInstance}" field="techEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.adminName}">
				<li class="fieldcontain">
					<span id="adminName-label" class="property-label"><g:message code="NONMEMBER.adminName.label" default="Admin Name" /></span>
					
						<span class="property-value" aria-labelledby="adminName-label"><g:fieldValue bean="${NONMEMBERInstance}" field="adminName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.adminTitle}">
				<li class="fieldcontain">
					<span id="adminTitle-label" class="property-label"><g:message code="NONMEMBER.adminTitle.label" default="Admin Title" /></span>
					
						<span class="property-value" aria-labelledby="adminTitle-label"><g:fieldValue bean="${NONMEMBERInstance}" field="adminTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.adminPhone}">
				<li class="fieldcontain">
					<span id="adminPhone-label" class="property-label"><g:message code="NONMEMBER.adminPhone.label" default="Admin Phone" /></span>
					
						<span class="property-value" aria-labelledby="adminPhone-label"><g:fieldValue bean="${NONMEMBERInstance}" field="adminPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.adminFax}">
				<li class="fieldcontain">
					<span id="adminFax-label" class="property-label"><g:message code="NONMEMBER.adminFax.label" default="Admin Fax" /></span>
					
						<span class="property-value" aria-labelledby="adminFax-label"><g:fieldValue bean="${NONMEMBERInstance}" field="adminFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.adminEmail}">
				<li class="fieldcontain">
					<span id="adminEmail-label" class="property-label"><g:message code="NONMEMBER.adminEmail.label" default="Admin Email" /></span>
					
						<span class="property-value" aria-labelledby="adminEmail-label"><g:fieldValue bean="${NONMEMBERInstance}" field="adminEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.salesName}">
				<li class="fieldcontain">
					<span id="salesName-label" class="property-label"><g:message code="NONMEMBER.salesName.label" default="Sales Name" /></span>
					
						<span class="property-value" aria-labelledby="salesName-label"><g:fieldValue bean="${NONMEMBERInstance}" field="salesName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.salesTitle}">
				<li class="fieldcontain">
					<span id="salesTitle-label" class="property-label"><g:message code="NONMEMBER.salesTitle.label" default="Sales Title" /></span>
					
						<span class="property-value" aria-labelledby="salesTitle-label"><g:fieldValue bean="${NONMEMBERInstance}" field="salesTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.salesPhone}">
				<li class="fieldcontain">
					<span id="salesPhone-label" class="property-label"><g:message code="NONMEMBER.salesPhone.label" default="Sales Phone" /></span>
					
						<span class="property-value" aria-labelledby="salesPhone-label"><g:fieldValue bean="${NONMEMBERInstance}" field="salesPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.salesFax}">
				<li class="fieldcontain">
					<span id="salesFax-label" class="property-label"><g:message code="NONMEMBER.salesFax.label" default="Sales Fax" /></span>
					
						<span class="property-value" aria-labelledby="salesFax-label"><g:fieldValue bean="${NONMEMBERInstance}" field="salesFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.salesEmail}">
				<li class="fieldcontain">
					<span id="salesEmail-label" class="property-label"><g:message code="NONMEMBER.salesEmail.label" default="Sales Email" /></span>
					
						<span class="property-value" aria-labelledby="salesEmail-label"><g:fieldValue bean="${NONMEMBERInstance}" field="salesEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.natureOfBusiness}">
				<li class="fieldcontain">
					<span id="natureOfBusiness-label" class="property-label"><g:message code="NONMEMBER.natureOfBusiness.label" default="Nature Of Business" /></span>
					
						<span class="property-value" aria-labelledby="natureOfBusiness-label"><g:fieldValue bean="${NONMEMBERInstance}" field="natureOfBusiness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="NONMEMBER.products.label" default="Products" /></span>
					
						<span class="property-value" aria-labelledby="products-label"><g:fieldValue bean="${NONMEMBERInstance}" field="products"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.issueDate}">
				<li class="fieldcontain">
					<span id="issueDate-label" class="property-label"><g:message code="NONMEMBER.issueDate.label" default="Issue Date" /></span>
					
						<span class="property-value" aria-labelledby="issueDate-label"><g:formatDate date="${NONMEMBERInstance?.issueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${NONMEMBERInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="NONMEMBER.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${NONMEMBERInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:NONMEMBERInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${NONMEMBERInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
