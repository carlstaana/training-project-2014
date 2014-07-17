<%@ page import="com.apollo.training.Topic" %>



<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="topic.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${topicInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="topic.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${topicInstance?.author}"/>

</div>

