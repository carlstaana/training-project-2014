<div
	class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'name', 'error')} required">
	<label for="name"> <g:message code="productCategory.name.label"
			default="Name" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required=""
		value="${productCategoryInstance?.name}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'productType', 'error')} required">
	<label for="productType"> <g:message code="company.productType.label"
			default="Product Type" /> <span class="required-indicator">*</span>
	</label>
	<g:select id="productType" name="productType.id"
		from="${com.apollo.training.ProductType.list()}" optionKey="id"
		required="" value="${companyInstance?.productType?.id}"
		class="many-to-one" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'subCategories', 'error')} required">
	<label for="subCategories"> <g:message
			code="productCategory.subCategories.label"
			default="Sub-Categories List" /> <span class="required-indicator">*</span>
	</label> 

	<!-- Render the subCategories template (_subCategories.gsp) here -->
	<g:render template="subCategories"
		model="['productCategoryInstance':productCategoryInstance]" />
	<!-- Render the subCategories template (_subCategories.gsp) here -->

</div>

