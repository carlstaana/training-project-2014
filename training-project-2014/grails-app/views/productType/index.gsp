
<%@ page import="com.apollo.training.ProductType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productType.label', default: 'Product Type')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<h1><g:message message="${entityName}" /></h1>
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.add.label" args="[entityName]" /></g:link></li>
				<li><g:link class="edit" action="index"><g:message code="default.edit.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:if test="${productTypeInstanceList != null && !productTypeInstanceList.isEmpty()}">
				<table>
				<thead>
						<tr>
						
							<g:sortableColumn property="name" title="${message(code: 'productType.name.label', default: 'Name')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${productTypeInstanceList}" status="i" var="productTypeInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link action="show" id="${productTypeInstance.id}">${fieldValue(bean: productTypeInstance, field: "name")}</g:link></td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
			</g:if>
			<g:else>
				<h1><g:message message="There are no ${entityName} records." /></h1>
			</g:else>
			<div class="pagination">
				<g:paginate total="${productTypeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>