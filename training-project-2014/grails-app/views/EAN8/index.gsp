
<%@ page import="com.apollo.training.EAN8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'EAN8.label', default: 'EAN8')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-EAN8" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-EAN8" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="company"
						title="${message(code: 'EAN8.company.label', default: 'Company')}" />

					<g:sortableColumn property="gln"
						title="${message(code: 'EAN8.gln.label', default: 'Gln')}" />

					<g:sortableColumn property="prefix"
						title="${message(code: 'EAN8.prefix.label', default: 'Prefix')}" />

					<g:sortableColumn property="contactPerson"
						title="${message(code: 'EAN8.contactPerson.label', default: 'Contact Person')}" />

					<g:sortableColumn property="ean8Number"
						title="${message(code: 'EAN8.ean8Number.label', default: 'Ean8 Number')}" />

					<g:sortableColumn property="brand"
						title="${message(code: 'EAN8.brand.label', default: 'Brand')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${EAN8InstanceList}" status="i" var="EAN8Instance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${EAN8Instance.id}">
								${fieldValue(bean: EAN8Instance, field: "company")}
							</g:link></td>

						<td>
							${fieldValue(bean: EAN8Instance, field: "gln")}
						</td>

						<td>
							${fieldValue(bean: EAN8Instance, field: "prefix")}
						</td>

						<td>
							${fieldValue(bean: EAN8Instance, field: "contactPerson")}
						</td>

						<td>
							${fieldValue(bean: EAN8Instance, field: "ean8Number")}
						</td>

						<td>
							${fieldValue(bean: EAN8Instance, field: "brand")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${EAN8InstanceCount ?: 0}" />
		</div>
	</div>

	<g:if test="${flash.message}">
		<div class="message" role="status">
			${flash.message}
		</div>
	</g:if>
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
