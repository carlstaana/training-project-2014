
<%@ page import="com.apollo.training.Download" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'download.label', default: 'Download')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="module">
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div id="list-download" class="content scaffold-list" role="main">
					<fieldset class="buttons topbutton">
				<a class="home" href="${createLink(uri: '/')}"><g:message code="default.back.to.main.label"/></a>
				<g:link class="create" action="create"><g:message code="default.create.new.label" args="[entityName]" /></g:link>
			</fieldset>
		<fieldset class="search">
		    <g:form action="index" method="GET">
        
            <label for="query">Search file:</label>
            <g:textField name="query" value="${params.query}"/>
        
    </g:form>
    </fieldset>
    <div id="clear"></div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="filePath" title="${message(code: 'download.fileName.label', default: 'File Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'download.description.label', default: 'Description')}" />
					
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</thead>
				<tbody>
				<g:each in="${downloadInstanceList}" status="i" var="downloadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: downloadInstance, field: "fileName")}</td>
					
						<td>${fieldValue(bean: downloadInstance, field: "description")}</td>
					
						<td><g:link action="download" id="${ downloadInstance.id }">Download</g:link></td>
					
						<td><g:link class="edit" action="edit" resource="${downloadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link></td>
					
						<td>
							<g:form url="[resource:downloadInstance, action:'delete']" method="DELETE">
								<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</g:form>
						</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${downloadInstanceCount ?: 0}" params="${params }"/>
			</div>
		</div>
		</div>
	</body>
</html>
