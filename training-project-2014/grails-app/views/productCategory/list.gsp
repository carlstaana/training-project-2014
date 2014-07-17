
<%@ page import="com.apollo.training.ProductCategory" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'productCategory.label', default: 'Product Category')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="module">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        <div id="list-ProductCategory" class="content scaffold-list" role="main">
			<fieldset class="buttons topbutton">
				<a class="home" href="${createLink(uri: '/')}"><g:message code="default.back.to.main.label"/></a>
				<g:link class="create" action="create"><g:message code="default.create.new.label" args="[entityName]" /></g:link>
			</fieldset>
			
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <th><g:message code="productCategory.productCategories" default="Product Categories" /></th>
                        
                            <g:sortableColumn property="name" title="${message(code: 'contact.name.label', default: 'Name')}" />
                        
                            <th><g:message code="productCategory.subCategory.label" default="SubCategories" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${productCategoryInstanceList}" status="i" var="productCategoryInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${productCategoryInstance.id}">${productCategoryInstance.encodeAsHTML()}</g:link></td>
                        
                            <td>${fieldValue(bean: productCategoryInstance, field: 'name')}</td>
                        
                              <td>${fieldValue(bean:productCategoryInstance, field:'subCategories')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${productCategoryInstanceTotal}" />
            </div>
        </div>
        </div>
    </body>
</html>
