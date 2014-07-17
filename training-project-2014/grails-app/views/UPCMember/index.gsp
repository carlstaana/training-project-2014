<%@ page import="com.apollo.training.UPCMember"%>

<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'UPCMember.label', default: 'UPC Member')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div id="module">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
	<div id="list-UPCMember" class="content scaffold-list" role="main">
			<fieldset class="buttons topbutton">
				<a class="home" href="${createLink(uri: '/')}"><g:message code="default.back.to.main.label"/></a>
				<g:link class="create" action="create"><g:message code="default.create.new.label" args="[entityName]" /></g:link>
			</fieldset>
		<fieldset class="search">
			<g:form action="index" method="GET">
				<label for="status">Search for Membership Status:</label>
				<g:select name="status" from="${['ALL', 'ADDED', 'EDITED', 'APPROVED', 'CANCELLED', 'REJECTED']}" value="${params.status}" onchange="submit()"/>
			</g:form>
		</fieldset>
		
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:if
			test="${UPCMemberInstanceList != null && !UPCMemberInstanceList.isEmpty()}">
			<table>
				<thead>
					<tr>

						<g:sortableColumn property="companyName"
							title="${message(code: 'UPCMember.companyName.label', default: 'Company Name')}" />

						<g:sortableColumn property="upcCoordinatorName"
							title="${message(code: 'UPCMember.upcCoordinatorName.label', default: 'UPC Coordinator Name')}" />

						<g:sortableColumn property="upcCode"
							title="${message(code: 'UPCMember.upcCode.label', default: 'UPC Code')}" />

						<g:sortableColumn property="status"
							title="${message(code: 'UPCMember.status.label', default: 'Status')}" />

					</tr>
				</thead>
				<tbody>
					<g:each in="${UPCMemberInstanceList}" status="i"
						var="UPCMemberInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

							<td><g:link action="show" id="${UPCMemberInstance.id}">
									${fieldValue(bean: UPCMemberInstance, field: "companyName")}
								</g:link></td>

							<td>
								${fieldValue(bean: UPCMemberInstance, field: "upcCoordinatorName")}
							</td>

							<td>
								${fieldValue(bean: UPCMemberInstance, field: "upcCode")}
							</td>

							<td>
								${fieldValue(bean: UPCMemberInstance, field: "status")}
							</td>

						</tr>
					</g:each>
				</tbody>
			</table>
		</g:if>
		<g:else>
			<h1>
				<g:message message="There are no ${entityName} records." />
			</h1>
		</g:else>
		<div class="pagination">
			<g:paginate total="${UPCMemberInstanceCount ?: 0}" params="${params }" />
		</div>
	</div>
	</div>
</body>
</html>
