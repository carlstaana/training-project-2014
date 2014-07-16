
<%@ page import="com.apollo.training.BatchPayment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batchPayment.label', default: 'BatchPayment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-batchPayment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-batchPayment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list batchPayment">
			
				<g:if test="${batchPaymentInstance?.membershipCategory}">
				<li class="fieldcontain">
					<span id="membershipCategory-label" class="property-label"><g:message code="batchPayment.membershipCategory.label" default="Membership Category" /></span>
					
						<span class="property-value" aria-labelledby="membershipCategory-label"><g:fieldValue bean="${batchPaymentInstance}" field="membershipCategory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchPaymentInstance?.membershipDate}">
				<li class="fieldcontain">
					<span id="membershipDate-label" class="property-label"><g:message code="batchPayment.membershipDate.label" default="Membership Date" /></span>
					
						<span class="property-value" aria-labelledby="membershipDate-label"><g:formatDate date="${batchPaymentInstance?.membershipDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchPaymentInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="batchPayment.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${batchPaymentInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${batchPaymentInstance?.balance}">
				<li class="fieldcontain">
					<span id="balance-label" class="property-label"><g:message code="batchPayment.balance.label" default="Balance" /></span>
					
						<span class="property-value" aria-labelledby="balance-label"><g:fieldValue bean="${batchPaymentInstance}" field="balance"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:batchPaymentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${batchPaymentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
