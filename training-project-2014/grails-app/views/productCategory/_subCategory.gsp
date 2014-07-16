<div id="subCategory${i}" class="subCategory-div"
	<g:if test="${hidden}">style="display:none;"</g:if>>
	<g:hiddenField name='subCategories[${i}].id' value='${subCategory?.id}' />
	<g:hiddenField name='subCategories[${i}].deleted' value='false' />
	<div>

	<span
		onClick="$('#subCategories\\[${i}\\]\\.deleted').val('true'); $('#subCategory${i}').hide();">
		<img src="${resource(dir:'images/skin', file:'database_delete.png')}"
		style="vertical-align: middle;" /> Remove Sub-category
	</span>
	</div>
	<div
		class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'sName', 'error')} required">
		<label for="sName"> <g:message
				code="productCategory.subCategories.sName.label" default="Name" /> <span
			class="required-indicator">*</span>
		</label>
		<g:textField name='subCategories[${i}].sName'
			value='${subCategory?.sName}' />
	</div>
	<div
		class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'code', 'error')} required">
		<label for="code"> <g:message
				code="productCategory.subCategories.code.label" default="Code" /> <span
			class="required-indicator">*</span>
		</label>
		<g:textField name='subCategories[${i}].code'
			value='${subCategory?.code}' />
	</div>
	<div
		class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'description', 'error')} required">
		<label for="description"> <g:message
				code="productCategory.subCategories.description.label" default="Description" /> <span
			class="required-indicator">*</span>
		</label>
		<g:textField name='subCategories[${i}].description'
			value='${subCategory?.description}' />
	</div>
</div>
