
<%@ page import="com.apollo.training.CompanyPayment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'companyPayment.label', default: 'Company Payment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<div id="list-companyPayment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="membershipFee" title="${message(code: 'companyPayment.membershipFee.label', default: 'Membership Fee')}" />
					
						<g:sortableColumn property="seminarFee" title="${message(code: 'companyPayment.seminarFee.label', default: 'Seminar Fee')}" />
					
						<g:sortableColumn property="entranceFee" title="${message(code: 'companyPayment.entranceFee.label', default: 'Entrance Fee')}" />
					
						<g:sortableColumn property="orNo" title="${message(code: 'companyPayment.orNo.label', default: 'Or No')}" />
					
						<g:sortableColumn property="orDate" title="${message(code: 'companyPayment.orDate.label', default: 'Or Date')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'companyPayment.remarks.label', default: 'Remarks')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${companyPaymentInstanceList}" status="i" var="companyPaymentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${companyPaymentInstance.id}" params="['company.id':params.company.id]">${fieldValue(bean: companyPaymentInstance, field: "membershipFee")}</g:link></td>
					
						<td>${fieldValue(bean: companyPaymentInstance, field: "seminarFee")}</td>
					
						<td>${fieldValue(bean: companyPaymentInstance, field: "entranceFee")}</td>
					
						<td>${fieldValue(bean: companyPaymentInstance, field: "orNo")}</td>
					
						<td><g:formatDate date="${companyPaymentInstance.orDate}" /></td>
					
						<td>${fieldValue(bean: companyPaymentInstance, field: "remarks")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${companyPaymentInstanceCount ?: 0}" />
			</div>
			<fieldset class="buttons">
				<g:link action="create" class="create" params="['company.id': params.company.id]">${message(code:'Add Company Payment', args: [message(code:'companyPayment.label', default: 'Company Payment')]) }</g:link>
			</fieldset>
		</div>
		</div>
	</body>
</html>
