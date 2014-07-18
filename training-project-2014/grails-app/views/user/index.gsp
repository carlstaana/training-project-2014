
<%@ page import="com.apollo.training.User"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

	<sec:ifNotLoggedIn>
		<g:link controller='login' action='auth'>Login</g:link>
	</sec:ifNotLoggedIn>

	<div id="module">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<div id="list-user" class="content scaffold-list" role="main">
			<fieldset class="buttons topbutton">
				<a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.back.to.main.label" /></a>
				<g:link class="create" action="create">
					<g:message code="default.create.new.label" args="[entityName]" />
				</g:link>
			</fieldset>
			<fieldset class="search">
				<g:form action="index" method="GET">
					<label for="query">Search for user:</label>
					<g:textField name="query" value="${params.query}" />
				</g:form>
			</fieldset>
			<div id="clear"></div>
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<table>
				<thead>
					<tr>

						<g:sortableColumn property="username"
							title="${message(code: 'user.username.label', default: 'Username')}" />

						<g:sortableColumn property="lastName"
							title="${message(code: 'user.lastName.label', default: 'Last Name')}" />

						<g:sortableColumn property="firstName"
							title="${message(code: 'user.firstName.label', default: 'First Name')}" />

						<g:sortableColumn property="middleInitial"
							title="${message(code: 'user.middleInitial.label', default: 'Middle Initial')}" />

						<g:sortableColumn property="company"
							title="${message(code: 'user.company.label', default: 'Company')}" />

						<g:sortableColumn property="position"
							title="${message(code: 'user.position.label', default: 'Position')}" />

					</tr>
				</thead>
				<tbody>
					<g:each in="${userInstanceList}" status="i" var="userInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

							<td><g:link action="show" id="${userInstance.id}">
									${fieldValue(bean: userInstance, field: "username")}
								</g:link></td>

							<td>
								${fieldValue(bean: userInstance, field: "lastName")}
							</td>

							<td>
								${fieldValue(bean: userInstance, field: "firstName")}
							</td>

							<td>
								${fieldValue(bean: userInstance, field: "middleInitial")}
							</td>

							<td>
								${fieldValue(bean: userInstance, field: "company")}
							</td>

							<td>
								${fieldValue(bean: userInstance, field: "position")}
							</td>

						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</div>

</body>
</html>
