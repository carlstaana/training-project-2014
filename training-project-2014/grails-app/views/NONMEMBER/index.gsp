
<%@ page import="com.apollo.training.NONMEMBER" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'NONMEMBER.label', default: 'NONMEMBER')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-NONMEMBER" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-NONMEMBER" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'NONMEMBER.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="gln" title="${message(code: 'NONMEMBER.gln.label', default: 'Gln')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'NONMEMBER.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="municipality" title="${message(code: 'NONMEMBER.municipality.label', default: 'Municipality')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'NONMEMBER.city.label', default: 'City')}" />
					
						<g:sortableColumn property="province" title="${message(code: 'NONMEMBER.province.label', default: 'Province')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${NONMEMBERInstanceList}" status="i" var="NONMEMBERInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${NONMEMBERInstance.id}">${fieldValue(bean: NONMEMBERInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: NONMEMBERInstance, field: "gln")}</td>
					
						<td>${fieldValue(bean: NONMEMBERInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: NONMEMBERInstance, field: "municipality")}</td>
					
						<td>${fieldValue(bean: NONMEMBERInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: NONMEMBERInstance, field: "province")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${NONMEMBERInstanceCount ?: 0}" />
			</div>
		</div>

	<fieldset class="form">
		<g:form action="index" method="GET">
			<div class="fieldcontain">
				<label for="query">Search for tasks:</label>
				<g:textField name="query" value="${params.query}" />
			</div>
		</g:form>
	</fieldset>

</body>
</html>
