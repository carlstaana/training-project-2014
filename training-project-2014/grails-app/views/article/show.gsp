
<%@ page import="com.apollo.training.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-article" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list article">
			
	<%--DOWNLOAD PDF FORM--%>
	<g:form action="downloadStatementOfAccount" method="POST" id="${articleInstance.id}" >
	<g:submitButton class="btn btn-primary top-align" style="width: 150px;" value="Download as PDF" name="submitButton" />
	</g:form>
	
				<g:if test="${articleInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="article.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${articleInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="article.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${articleInstance}" field="author"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.imageFile}">
				<li class="fieldcontain">
<%--					<span id="imageFile-label" class="property-label"><g:message code="article.imageFile.label" default="Image File" /></span>--%>
					<p align="center"><img  src="${createLink(controller:'Article', action:'showFile', id:"${articleInstance.id}")}" width='300' /></p>
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.publication}">
				<li class="fieldcontain">
					<span id="publication-label" class="property-label"><g:message code="article.publication.label" default="Publication" /></span>
					<p> ${articleInstance.publicationString()} </p>
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.story}">
				<li class="fieldcontain">
					<span id="story-label" class="property-label"><g:message code="article.story.label" default="Story" /></span>
					<br>
					<p align ="justify" style="text-indent: 5em;"> ${articleInstance.storyString()}</p>
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.newsType}">
				<li class="fieldcontain">
					<span id="newsType-label" class="property-label"><g:message code="article.newsType.label" default="News Type" /></span>
					
						<span class="property-value" aria-labelledby="newsType-label"><g:fieldValue bean="${articleInstance}" field="newsType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:articleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${articleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
