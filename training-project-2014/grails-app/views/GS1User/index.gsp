
<%@ page import="com.apollo.training.GS1User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'GS1User.label', default: 'GS1User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-GS1User" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-GS1User" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'GS1User.username.label', default: 'Username')}" />
					
<%--						<g:sortableColumn property="password" title="${message(code: 'GS1User.password.label', default: 'Password')}" />--%>
<%--					--%>
<%--						<g:sortableColumn property="retypePassword" title="${message(code: 'GS1User.retypePassword.label', default: 'Retype Password')}" />--%>
					
						<g:sortableColumn property="lastname" title="${message(code: 'GS1User.lastname.label', default: 'Lastname')}" />
					
						<g:sortableColumn property="firstname" title="${message(code: 'GS1User.firstname.label', default: 'Firstname')}" />
					
						<g:sortableColumn property="middleInitial" title="${message(code: 'GS1User.middleInitial.label', default: 'Middle Initial')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${GS1UserInstanceList}" status="i" var="GS1UserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${GS1UserInstance.id}">${fieldValue(bean: GS1UserInstance, field: "username")}</g:link></td>
					
<%--						<td>${fieldValue(bean: GS1UserInstance, field: "password")}</td>--%>
<%--					--%>
<%--						<td>${fieldValue(bean: GS1UserInstance, field: "retypePassword")}</td>--%>
					
						<td>${fieldValue(bean: GS1UserInstance, field: "lastname")}</td>
					
						<td>${fieldValue(bean: GS1UserInstance, field: "firstname")}</td>
					
						<td>${fieldValue(bean: GS1UserInstance, field: "middleInitial")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${GS1UserInstanceCount ?: 0}" />
			</div>
		</div>
		
<%--search form --%>
<g:if test="${flash.message}">
<div class="message" role="status">${flash.message}</div>
</g:if>
<fieldset class="form">
    <g:form action="index" method="GET">
        <div class="fieldcontain">
            <label for="query">Search:</label>
            <g:textField name="query" value="${params.query}"/>
        </div>
    </g:form>
</fieldset>
		
		
	</body>
</html>
