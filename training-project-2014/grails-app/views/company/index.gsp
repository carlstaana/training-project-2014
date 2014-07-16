
<%@ page import="com.apollo.training.Company"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'company.label', default: 'Company')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-company" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-company" class="content scaffold-list" role="main">

		<g:form>
			<h1>
				<g:message code="default.list.label" args="[entityName]" />
			</h1>
			<div style="margin-left: 45%">
				Filter by Status:
				<g:select name="searchCategory"
					from="${com.apollo.training.Company$SearchCategories?.values()}"
					keys="${com.apollo.training.Company$SearchCategories.values()*.name()}"
					required="" value="${searchCategory}" />
				<input type="search" name="searchable" value="${searchKeyword}" />
				<g:actionSubmit action="index" value="Search" />
			</div>
		</g:form>

		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:if test="${!searchKeyword}">
						<g:sortableColumn property="companyName"
							title="${message(code: 'company.companyName.label', default: 'Company Name')}" />

						<g:sortableColumn property="membershipCategory"
							title="${message(code: 'company.membershipCategory.label', default: 'Membership Category')}" />

						<g:sortableColumn property="address"
							title="${message(code: 'company.address.label', default: 'Address')}" />

						<g:sortableColumn property="status"
							title="${message(code: 'company.status.label', default: 'Status')}" />
					</g:if>
					<g:else>
						<g:sortableColumn property="companyName"
							title="${message(code: 'company.companyName.label', default: 'Company Name')}"
							params="searchCategory:searchCategory,searchable:searchKeyword]" />
						<g:sortableColumn property="membershipCategory"
							title="${message(code: 'company.membershipCategory.label', default: 'Membership Category')}"
							params="searchCategory:searchCategory,searchable:searchKeyword]" />

						<g:sortableColumn property="address"
							title="${message(code: 'company.address.label', default: 'Address')}"
							params="searchCategory:searchCategory,searchable:searchKeyword]" />

						<g:sortableColumn property="status"
							title="${message(code: 'company.status.label', default: 'Status')}"
							params="searchCategory:searchCategory,searchable:searchKeyword]" />
					</g:else>

				</tr>
			</thead>
			<tbody>
				<g:each in="${companyInstanceList}" status="i" var="companyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${companyInstance.id}">
								${fieldValue(bean: companyInstance, field: "companyName")}
							</g:link></td>

						<td>
							${fieldValue(bean: companyInstance, field: "membershipCategory")}
						</td>

						<td>
							${fieldValue(bean: companyInstance, field: "address")}
						</td>

						<td>
							${fieldValue(bean: companyInstance, field: "status")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:if test="${!searchKeyword}">
				<g:paginate total="${companyInstanceTotal}" />
			</g:if>
			<g:else>
				<g:paginate total="${companyInstanceTotal}"
					params="[searchCategory:searchCategory,searchable:searchKeyword]" />
			</g:else>
		</div>
	</div>
</body>
</html>
