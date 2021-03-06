
<%@ page import="com.apollo.training.Topic" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'topic.label', default: 'Topic')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div id="show-topic" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list topic">
				<g:if test="${topicInstance?.posts}">
				<li class="fieldcontain">
					
					<g:each in="${topicInstance.posts?.sort{a,b -> a.dateCreated.compareTo(b.dateCreated)}}" var="p">
						<div class="reply">
						<div class="authorDate">
							<div class="author">
								${p.author}
							</div>
							<div class="dateToBottom">
							<div class="dateCreated">
								<g:formatDate date="${p.dateCreated}" format="yyyy-MM-dd HH:mm"/>
							</div>
							</div>
						</div>
							<div class="postMessage">
								${p.message}
							</div>
						</div>
					</g:each>
					
				</li>
				</g:if>
				
				
				
				<!-- TODO START: fix alignment -->
				<g:form url="[resource:postInstance, action:'save', controller:'post', params:['topic':topicInstance.id]]">
					
						<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'message', 'error')} required" style="float:left;padding-right:1em; padding-bottom:1em;">
							<g:textArea class="postInput" name="message" required="" />
						<!-- set value of user name -->
							<input type="hidden" name="author" id="author" value="${postInstance.author}" />
					
						<g:submitButton name="create" class="save" value="Post" />
						</div>
					
				</g:form>
				<!-- TODO END -->
				
				
				
			</ol>
			<g:form url="[resource:topicInstance, action:'delete']" method="DELETE" style="clear:left">
				<fieldset class="buttons">
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
