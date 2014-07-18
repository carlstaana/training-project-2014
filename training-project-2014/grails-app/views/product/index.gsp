
<%@ page import="com.apollo.training.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div id="module">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<div id="list-product" class="content scaffold-list" role="main ">

			<fieldset class="buttons topbutton">
				<a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.back.to.main.label" /></a>
				<g:link class="create" action="create">
					<g:message code="default.create.new.label" args="[entityName]" />
				</g:link>
			</fieldset>

			<g:form>
				<fieldset class="search">
					<g:select name="searchCategory"
						from="${com.apollo.training.Product$SearchCategories?.values()}"
						keys="${com.apollo.training.Product$SearchCategories.values()*.name()}"
						required="" value="${searchCategory}" />
					<input type="search" name="searchable" value="${searchKeyword}" />
					<g:actionSubmit action="index" value="Search" />
				</fieldset>
			</g:form>
			<div id="clear"></div>
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>

			<table>
				<thead>

					<tr>
						<g:if test="${!searchKeyword}">
							<g:sortableColumn property="company"
								title="${message(code: 'client.company.label', default: 'Company')}"
								params="[searchCategory:searchCategory,searchable:searchKeyword]" />
							<g:sortableColumn property="brand"
								title="${message(code: 'client.brand.label', default: 'Brand')}"
								params="[searchCategory:searchCategory,searchable:searchKeyword]" />
							<g:sortableColumn property="status"
								title="${message(code: 'client.status.label', default: 'Status')}"
								params="[searchCategory:searchCategory,searchable:searchKeyword]" />
						</g:if>
						<g:else>
							<g:sortableColumn property="company"
								title="${message(code: 'client.company.label', default: 'Company')}"
								params="[searchCategory:searchCategory,searchable:searchKeyword]" />
							<g:sortableColumn property="brand"
								title="${message(code: 'client.brand.label', default: 'Brand')}"
								params="[searchCategory:searchCategory,searchable:searchKeyword]" />
							<g:sortableColumn property="status"
								title="${message(code: 'client.status.label', default: 'Status')}"
								params="[searchCategory:searchCategory,searchable:searchKeyword]" />
						</g:else>
					</tr>

				</thead>
				<tbody>
					<g:each in="${productInstanceList}" status="i"
						var="productInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

							<td><g:link action="show" id="${productInstance.id}">
									${fieldValue(bean: productInstance, field: "company")}
								</g:link></td>

							<td>
								${fieldValue(bean: productInstance, field: "brand")}
							</td>

							<td>
								${fieldValue(bean: productInstance, field: "status")}
							</td>



						</tr>
					</g:each>
				</tbody>
			</table>

			<div class="pagination">
				<g:if test="${!searchKeyword}">
					<g:paginate total="${productInstanceTotal}"
						params="[searchCategory:searchCategory,searchable:searchKeyword]" />
				</g:if>
				<g:else>
					<g:paginate total="${productInstanceTotal}"
						params="[searchCategory:searchCategory,searchable:searchKeyword]" />
				</g:else>
			</div>
		</div>
	</div>
</body>
</html>
