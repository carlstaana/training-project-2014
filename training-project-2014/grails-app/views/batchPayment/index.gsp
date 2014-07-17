
<%@ page import="com.apollo.training.BatchPayment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'batchPayment.label', default: 'Batch Payment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div id="list-batchPayment" class="content scaffold-list" role="main">
			
			<fieldset class="buttons topbutton">
				<a class="home" href="${createLink(uri: '/')}"><g:message code="default.back.to.main.label"/></a>
				<g:link class="create" action="create"><g:message code="default.create.new.label" args="[entityName]" /></g:link>
			</fieldset>
			<div id="clear"></div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="membershipCategory" title="${message(code: 'batchPayment.membershipCategory.label', default: 'Membership Category')}" />
					
						<g:sortableColumn property="membershipDate" title="${message(code: 'batchPayment.membershipDate.label', default: 'Membership Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'batchPayment.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="balance" title="${message(code: 'batchPayment.balance.label', default: 'Balance')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${batchPaymentInstanceList}" status="i" var="batchPaymentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${batchPaymentInstance.id}">${fieldValue(bean: batchPaymentInstance, field: "membershipCategory")}</g:link></td>
					
						<td><g:formatDate date="${batchPaymentInstance.membershipDate}" /></td>
					
						<td>${fieldValue(bean: batchPaymentInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: batchPaymentInstance, field: "balance")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${batchPaymentInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
