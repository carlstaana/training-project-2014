<%@ page import="com.apollo.training.Article" %>



<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="article.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${articleInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="article.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${articleInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'imageFile', 'error')} required">
	<label for="imageFile">
		<g:message code="article.imageFile.label" default="Image File" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="imageFile" name="imageFile" />

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'publication', 'error')} required">
	<label for="publication">
		<g:message code="article.publication.label" default="Publication" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="publication" name="publication" />

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'story', 'error')} required">
	<label for="story">
		<g:message code="article.story.label" default="Story" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="story" name="story" />

</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'newsType', 'error')} required">
	<label for="newsType">
		<g:message code="article.newsType.label" default="News Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="newsType" from="${articleInstance.constraints.newsType.inList}" required="" value="${articleInstance?.newsType}" valueMessagePrefix="article.newsType"/>

</div>

