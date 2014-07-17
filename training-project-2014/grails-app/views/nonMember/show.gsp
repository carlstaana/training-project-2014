
<%@ page import="com.apollo.training.NonMember" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nonMember.label', default: 'NonMember')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-nonMember" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-nonMember" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list nonMember">
			
				<g:if test="${nonMemberInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="nonMember.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${nonMemberInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.gln}">
				<li class="fieldcontain">
					<span id="gln-label" class="property-label"><g:message code="nonMember.gln.label" default="Gln" /></span>
					
						<span class="property-value" aria-labelledby="gln-label"><g:fieldValue bean="${nonMemberInstance}" field="gln"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="nonMember.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${nonMemberInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.municipality}">
				<li class="fieldcontain">
					<span id="municipality-label" class="property-label"><g:message code="nonMember.municipality.label" default="Municipality" /></span>
					
						<span class="property-value" aria-labelledby="municipality-label"><g:fieldValue bean="${nonMemberInstance}" field="municipality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="nonMember.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${nonMemberInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.province}">
				<li class="fieldcontain">
					<span id="province-label" class="property-label"><g:message code="nonMember.province.label" default="Province" /></span>
					
						<span class="property-value" aria-labelledby="province-label"><g:fieldValue bean="${nonMemberInstance}" field="province"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="nonMember.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${nonMemberInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="nonMember.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${nonMemberInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="nonMember.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${nonMemberInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="nonMember.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${nonMemberInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="nonMember.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${nonMemberInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.reasonForApplyingGLN}">
				<li class="fieldcontain">
					<span id="reasonForApplyingGLN-label" class="property-label"><g:message code="nonMember.reasonForApplyingGLN.label" default="Reason For Applying GLN" /></span>
					
						<span class="property-value" aria-labelledby="reasonForApplyingGLN-label"><g:fieldValue bean="${nonMemberInstance}" field="reasonForApplyingGLN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.tradingPartners}">
				<li class="fieldcontain">
					<span id="tradingPartners-label" class="property-label"><g:message code="nonMember.tradingPartners.label" default="Trading Partners" /></span>
					
						<span class="property-value" aria-labelledby="tradingPartners-label"><g:fieldValue bean="${nonMemberInstance}" field="tradingPartners"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.communicationNetworkUsed}">
				<li class="fieldcontain">
					<span id="communicationNetworkUsed-label" class="property-label"><g:message code="nonMember.communicationNetworkUsed.label" default="Communication Network Used" /></span>
					
						<span class="property-value" aria-labelledby="communicationNetworkUsed-label"><g:fieldValue bean="${nonMemberInstance}" field="communicationNetworkUsed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.providerName}">
				<li class="fieldcontain">
					<span id="providerName-label" class="property-label"><g:message code="nonMember.providerName.label" default="Provider Name" /></span>
					
						<span class="property-value" aria-labelledby="providerName-label"><g:fieldValue bean="${nonMemberInstance}" field="providerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.thruEmailInternetOthersLikeVAN}">
				<li class="fieldcontain">
					<span id="thruEmailInternetOthersLikeVAN-label" class="property-label"><g:message code="nonMember.thruEmailInternetOthersLikeVAN.label" default="Thru Email Internet Others Like VAN" /></span>
					
						<span class="property-value" aria-labelledby="thruEmailInternetOthersLikeVAN-label"><g:fieldValue bean="${nonMemberInstance}" field="thruEmailInternetOthersLikeVAN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.ebxmlEDI}">
				<li class="fieldcontain">
					<span id="ebxmlEDI-label" class="property-label"><g:message code="nonMember.ebxmlEDI.label" default="Ebxml EDI" /></span>
					
						<span class="property-value" aria-labelledby="ebxmlEDI-label"><g:fieldValue bean="${nonMemberInstance}" field="ebxmlEDI"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.businessMessageUsed}">
				<li class="fieldcontain">
					<span id="businessMessageUsed-label" class="property-label"><g:message code="nonMember.businessMessageUsed.label" default="Business Message Used" /></span>
					
						<span class="property-value" aria-labelledby="businessMessageUsed-label"><g:fieldValue bean="${nonMemberInstance}" field="businessMessageUsed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.ediMessageStandardUsed}">
				<li class="fieldcontain">
					<span id="ediMessageStandardUsed-label" class="property-label"><g:message code="nonMember.ediMessageStandardUsed.label" default="Edi Message Standard Used" /></span>
					
						<span class="property-value" aria-labelledby="ediMessageStandardUsed-label"><g:fieldValue bean="${nonMemberInstance}" field="ediMessageStandardUsed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.headName}">
				<li class="fieldcontain">
					<span id="headName-label" class="property-label"><g:message code="nonMember.headName.label" default="Head Name" /></span>
					
						<span class="property-value" aria-labelledby="headName-label"><g:fieldValue bean="${nonMemberInstance}" field="headName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.designation}">
				<li class="fieldcontain">
					<span id="designation-label" class="property-label"><g:message code="nonMember.designation.label" default="Designation" /></span>
					
						<span class="property-value" aria-labelledby="designation-label"><g:fieldValue bean="${nonMemberInstance}" field="designation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.techName}">
				<li class="fieldcontain">
					<span id="techName-label" class="property-label"><g:message code="nonMember.techName.label" default="Tech Name" /></span>
					
						<span class="property-value" aria-labelledby="techName-label"><g:fieldValue bean="${nonMemberInstance}" field="techName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.techTitle}">
				<li class="fieldcontain">
					<span id="techTitle-label" class="property-label"><g:message code="nonMember.techTitle.label" default="Tech Title" /></span>
					
						<span class="property-value" aria-labelledby="techTitle-label"><g:fieldValue bean="${nonMemberInstance}" field="techTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.techPhone}">
				<li class="fieldcontain">
					<span id="techPhone-label" class="property-label"><g:message code="nonMember.techPhone.label" default="Tech Phone" /></span>
					
						<span class="property-value" aria-labelledby="techPhone-label"><g:fieldValue bean="${nonMemberInstance}" field="techPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.techFax}">
				<li class="fieldcontain">
					<span id="techFax-label" class="property-label"><g:message code="nonMember.techFax.label" default="Tech Fax" /></span>
					
						<span class="property-value" aria-labelledby="techFax-label"><g:fieldValue bean="${nonMemberInstance}" field="techFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.techEmail}">
				<li class="fieldcontain">
					<span id="techEmail-label" class="property-label"><g:message code="nonMember.techEmail.label" default="Tech Email" /></span>
					
						<span class="property-value" aria-labelledby="techEmail-label"><g:fieldValue bean="${nonMemberInstance}" field="techEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.adminName}">
				<li class="fieldcontain">
					<span id="adminName-label" class="property-label"><g:message code="nonMember.adminName.label" default="Admin Name" /></span>
					
						<span class="property-value" aria-labelledby="adminName-label"><g:fieldValue bean="${nonMemberInstance}" field="adminName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.adminTitle}">
				<li class="fieldcontain">
					<span id="adminTitle-label" class="property-label"><g:message code="nonMember.adminTitle.label" default="Admin Title" /></span>
					
						<span class="property-value" aria-labelledby="adminTitle-label"><g:fieldValue bean="${nonMemberInstance}" field="adminTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.adminPhone}">
				<li class="fieldcontain">
					<span id="adminPhone-label" class="property-label"><g:message code="nonMember.adminPhone.label" default="Admin Phone" /></span>
					
						<span class="property-value" aria-labelledby="adminPhone-label"><g:fieldValue bean="${nonMemberInstance}" field="adminPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.adminFax}">
				<li class="fieldcontain">
					<span id="adminFax-label" class="property-label"><g:message code="nonMember.adminFax.label" default="Admin Fax" /></span>
					
						<span class="property-value" aria-labelledby="adminFax-label"><g:fieldValue bean="${nonMemberInstance}" field="adminFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.adminEmail}">
				<li class="fieldcontain">
					<span id="adminEmail-label" class="property-label"><g:message code="nonMember.adminEmail.label" default="Admin Email" /></span>
					
						<span class="property-value" aria-labelledby="adminEmail-label"><g:fieldValue bean="${nonMemberInstance}" field="adminEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.salesName}">
				<li class="fieldcontain">
					<span id="salesName-label" class="property-label"><g:message code="nonMember.salesName.label" default="Sales Name" /></span>
					
						<span class="property-value" aria-labelledby="salesName-label"><g:fieldValue bean="${nonMemberInstance}" field="salesName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.salesTitle}">
				<li class="fieldcontain">
					<span id="salesTitle-label" class="property-label"><g:message code="nonMember.salesTitle.label" default="Sales Title" /></span>
					
						<span class="property-value" aria-labelledby="salesTitle-label"><g:fieldValue bean="${nonMemberInstance}" field="salesTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.salesPhone}">
				<li class="fieldcontain">
					<span id="salesPhone-label" class="property-label"><g:message code="nonMember.salesPhone.label" default="Sales Phone" /></span>
					
						<span class="property-value" aria-labelledby="salesPhone-label"><g:fieldValue bean="${nonMemberInstance}" field="salesPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.salesFax}">
				<li class="fieldcontain">
					<span id="salesFax-label" class="property-label"><g:message code="nonMember.salesFax.label" default="Sales Fax" /></span>
					
						<span class="property-value" aria-labelledby="salesFax-label"><g:fieldValue bean="${nonMemberInstance}" field="salesFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.salesEmail}">
				<li class="fieldcontain">
					<span id="salesEmail-label" class="property-label"><g:message code="nonMember.salesEmail.label" default="Sales Email" /></span>
					
						<span class="property-value" aria-labelledby="salesEmail-label"><g:fieldValue bean="${nonMemberInstance}" field="salesEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.natureOfBusiness}">
				<li class="fieldcontain">
					<span id="natureOfBusiness-label" class="property-label"><g:message code="nonMember.natureOfBusiness.label" default="Nature Of Business" /></span>
					
						<span class="property-value" aria-labelledby="natureOfBusiness-label"><g:fieldValue bean="${nonMemberInstance}" field="natureOfBusiness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.products}">
				<li class="fieldcontain">
					<span id="products-label" class="property-label"><g:message code="nonMember.products.label" default="Products" /></span>
					
						<span class="property-value" aria-labelledby="products-label"><g:fieldValue bean="${nonMemberInstance}" field="products"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.issueDate}">
				<li class="fieldcontain">
					<span id="issueDate-label" class="property-label"><g:message code="nonMember.issueDate.label" default="Issue Date" /></span>
					
						<span class="property-value" aria-labelledby="issueDate-label"><g:formatDate date="${nonMemberInstance?.issueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${nonMemberInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="nonMember.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${nonMemberInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:nonMemberInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${nonMemberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
