
<%@ page import="com.apollo.training.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div id="list-article" class="content scaffold-list" role="main">
			<fieldset style="float: left;" class="buttons">
				<a class="home" href="${createLink(uri: '/')}"><g:message code="default.back.to.main.label"/></a>
				<g:link class="create" action="create"><g:message code="default.create.new.label" args="[entityName]" /></g:link>
			</fieldset>
			<fieldset style="padding-left: 0; float: right;">
			    <g:form action="index" method="GET">
				    <label for="query">Search:</label>
				    <g:textField name="query" value="${params.query}"/>
			    </g:form>
			</fieldset>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'article.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'article.author.label', default: 'Author')}" />
					
						<%--<g:sortableColumn property="imageFile" title="${message(code: 'article.imageFile.label', default: 'Image File')}" />
					
						<g:sortableColumn property="publication" title="${message(code: 'article.publication.label', default: 'Publication')}" />
					
						<g:sortableColumn property="story" title="${message(code: 'article.story.label', default: 'Story')}" />
					
						--%><g:sortableColumn property="newsType" title="${message(code: 'article.newsType.label', default: 'News Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${articleInstanceList}" status="i" var="articleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${articleInstance.id}">${fieldValue(bean: articleInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: articleInstance, field: "author")}</td>
					
						<%--<td>${fieldValue(bean: articleInstance, field: "imageFile")}</td>
					
						<td>${fieldValue(bean: articleInstance, field: "publication")}</td>
					
						<td>${fieldValue(bean: articleInstance, field: "story")}</td>
					
						--%><td>${fieldValue(bean: articleInstance, field: "newsType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${articleInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
		
	</body>
</html>
