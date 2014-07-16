
<%@ page import="com.apollo.training.ProductCategory"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'productCategory.label', default: 'ProductCategory')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-productCategory" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="list">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>

	<div id="show-productCategory" class="content scaffold-show"
		role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list productCategory">

			<g:if test="${productCategoryInstance?.id}">
				<li class="fieldcontain"><span id="name-label"
					class="property-label"><g:message
							code="productCategory.id.label" default="ID" /></span> <span
					class="property-value" aria-labelledby="name-label"><g:fieldValue
							bean="${productCategoryInstance}" field="id" /></span></li>
			</g:if>

			<g:if test="${productCategoryInstance?.name}">
				<li class="fieldcontain"><span id="name-label"
					class="property-label"><g:message
							code="productCategory.name.label" default="Name" /></span> <span
					class="property-value" aria-labelledby="name-label"><g:fieldValue
							bean="${productCategoryInstance}" field="name" /></span></li>
			</g:if>

			<g:if test="${productCategoryInstance?.productType}">
				<li class="fieldcontain"><span id="productType-label"
					class="property-label"><g:message
							code="productCategory.productType.label"
							default="Product Type" /></span> <span class="property-value"
					aria-labelledby="productType-label"><g:fieldValue
							bean="${productCategoryInstance}" field="productType" /></span></li>
			</g:if>

			<g:if test="${productCategoryInstance?.subCategories}">
				<li class="fieldcontain"><span id="subCategories-label"
					class="property-label"><g:message
							code="productCategory.subCategories.label"
							default="Sub Categories" /></span></li>
				<li class="fieldcontain"><g:each
						in="${productCategoryInstance.subCategories}" var="s">
						<span id="subCategories-label" class="property-label"><g:message
								code="productCategory.subCategories.index.label"
								default="Category #" /></span>
						<span class="property-value" aria-labelledby="subCategories-label">
							${s?.index+1}
						</span>
						<span id="subCategories-label" class="property-label"><g:message
								code="productCategory.subCategories.sName.label" default="Name" /></span>
						<span class="property-value" aria-labelledby="subCategories-label">
							${s?.sName}
						</span>
						<span id="subCategories-label" class="property-label"><g:message
								code="productCategory.subCategories.code.label" default="Code" /></span>
						<span class="property-value" aria-labelledby="subCategories-label">
							${s?.code}
						</span>
						<span id="subCategories-label" class="property-label"><g:message
								code="productCategory.subCategories.description.label"
								default="Description" /></span>
						<span class="property-value" aria-labelledby="subCategories-label">
							${s?.description}
						</span>
					</g:each></li>
			</g:if>

		</ol>
		<g:form url="[resource:productCategoryInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit"
					resource="${productCategoryInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
