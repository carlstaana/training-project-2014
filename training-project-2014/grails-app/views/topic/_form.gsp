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

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'posts', 'error')} ">
	<label for="posts">
		<g:message code="topic.posts.label" default="Posts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${topicInstance?.posts?}" var="p">
    <li><g:link controller="post" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="post" action="create" params="['topic.id': topicInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'post.label', default: 'Post')])}</g:link>
</li>
</ul>


</div>

