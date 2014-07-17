
<%@ page import="com.apollo.training.Topic" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'topic.label', default: 'Topic')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div id="list-topic" class="content scaffold-list" role="main">
			<fieldset class="buttons topbutton">
				<a class="home" href="${createLink(uri: '/')}"><g:message code="default.back.to.main.label"/></a>
				<g:link class="create" action="create"><g:message code="default.create.new.label" args="[entityName]" /></g:link>
			</fieldset>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'topic.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'topic.author.label', default: 'Author')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'topic.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${topicInstanceList}" status="i" var="topicInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${topicInstance.id}">${fieldValue(bean: topicInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: topicInstance, field: "author")}</td>
					
						<td><g:formatDate date="${topicInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${topicInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
