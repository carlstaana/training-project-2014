
<%@ page import="com.apollo.training.CompanyPayment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'companyPayment.label', default: 'CompanyPayment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-companyPayment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-companyPayment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list companyPayment">
			
				<g:if test="${companyPaymentInstance?.membershipFee}">
				<li class="fieldcontain">
					<span id="membershipFee-label" class="property-label"><g:message code="companyPayment.membershipFee.label" default="Membership Fee" /></span>
					
						<span class="property-value" aria-labelledby="membershipFee-label"><g:fieldValue bean="${companyPaymentInstance}" field="membershipFee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyPaymentInstance?.seminarFee}">
				<li class="fieldcontain">
					<span id="seminarFee-label" class="property-label"><g:message code="companyPayment.seminarFee.label" default="Seminar Fee" /></span>
					
						<span class="property-value" aria-labelledby="seminarFee-label"><g:fieldValue bean="${companyPaymentInstance}" field="seminarFee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyPaymentInstance?.entranceFee}">
				<li class="fieldcontain">
					<span id="entranceFee-label" class="property-label"><g:message code="companyPayment.entranceFee.label" default="Entrance Fee" /></span>
					
						<span class="property-value" aria-labelledby="entranceFee-label"><g:fieldValue bean="${companyPaymentInstance}" field="entranceFee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyPaymentInstance?.orNo}">
				<li class="fieldcontain">
					<span id="orNo-label" class="property-label"><g:message code="companyPayment.orNo.label" default="Or No" /></span>
					
						<span class="property-value" aria-labelledby="orNo-label"><g:fieldValue bean="${companyPaymentInstance}" field="orNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyPaymentInstance?.orDate}">
				<li class="fieldcontain">
					<span id="orDate-label" class="property-label"><g:message code="companyPayment.orDate.label" default="Or Date" /></span>
					
						<span class="property-value" aria-labelledby="orDate-label"><g:formatDate date="${companyPaymentInstance?.orDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyPaymentInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="companyPayment.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${companyPaymentInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyPaymentInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="companyPayment.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${companyPaymentInstance?.company?.id}">${companyPaymentInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:companyPaymentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link action="index" controller="Company">Cancel</g:link>
					<g:link class="edit" action="edit" resource="${companyPaymentInstance}" params="['company.id':params.company.id]"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
