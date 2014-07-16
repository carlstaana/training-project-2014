
<%@ page import="com.apollo.training.CompanyRemarks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'companyRemarks.label', default: 'CompanyRemarks')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-companyRemarks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-companyRemarks" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list companyRemarks">
			
				<g:if test="${companyRemarksInstance?.message}">
				<li class="fieldcontain">
					<span id="message-label" class="property-label"><g:message code="companyRemarks.message.label" default="Message" /></span>
					
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${companyRemarksInstance}" field="message"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyRemarksInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="companyRemarks.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${companyRemarksInstance?.company?.id}">${companyRemarksInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:companyRemarksInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link action="index" controller="Company">Cancel</g:link>
					<g:link class="edit" action="edit" resource="${companyRemarksInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
