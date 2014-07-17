
<%@ page import="com.apollo.training.NatureOfBusiness" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'natureOfBusiness.label', default: 'Nature of Business')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div id="list-natureOfBusiness" class="content scaffold-list" role="main">

			<fieldset class="buttons topbutton">
				<a class="home" href="${createLink(uri: '/')}"><g:message code="default.back.to.main.label"/></a>
				<g:link class="create" action="create"><g:message code="default.create.new.label" args="[entityName]" /></g:link>
			</fieldset>
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:if test="${natureOfBusinessInstanceList != null && !natureOfBusinessInstanceList.isEmpty()}">
				<table>
				<thead>
						<tr>
						
							<g:sortableColumn property="name" title="${message(code: 'natureOfBusiness.name.label', default: 'Name')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${natureOfBusinessInstanceList}" status="i" var="natureOfBusinessInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link action="show" id="${natureOfBusinessInstance.id}">${fieldValue(bean: natureOfBusinessInstance, field: "name")}</g:link></td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
			</g:if>
			<g:else>
				<h1><g:message message="There are no ${entityName} records." /></h1>
			</g:else>
			<div class="pagination">
				<g:paginate total="${natureOfBusinessInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
