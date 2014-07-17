<%@ page import="com.apollo.training.ProductCategory"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'productCategory.label', default: 'Product Category')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div id="module">
			<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
	<div id="create-productCategory" class="content scaffold-create"
		role="main">
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${productCategoryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productCategoryInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form url="[resource:productCategoryInstance, action:'save']">
			<fieldset class="form">
				<g:render template="productCategory" model="['productCategoryInstance':productCategoryInstance]"/>
			</fieldset>
			
			<fieldset class="buttons">
				<g:submitButton name="create" class="save"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
				<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
			</fieldset>
		</g:form>
	</div>
    </div>
</body>
</html>
