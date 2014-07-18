<%@ page import="com.apollo.training.Product"%>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="product.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<sec:ifAllGranted roles="ROLE_ADMIN">
		<g:select id="company" name="company.id" from="${com.apollo.training.Company.list()}" optionKey="id" required="" value="${productInstance?.company?.id}" class="one-to-many" />
	</sec:ifAllGranted>
	<sec:ifAllGranted roles="ROLE_USER">
		<g:textField id="company" name="company.id" readonly="readonly" required="" value="${applicationContext.springSecurityService.currentUser.company}" />
	</sec:ifAllGranted>
</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'subCompany', 'error')} ">
	<label for="subCompany"> <g:message
			code="product.subCompany.label" default="Sub Company" />

	</label>
	<g:textField name="subCompany" value="${productInstance?.subCompany}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'GLN', 'error')} required">
	<label for="GLN"> <g:message code="product.GLN.label"
			default="GLN" /> <span class="required-indicator">*</span>
	</label>
	<g:field name="GLN" type="number" value="${productInstance.GLN}"
		required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'prefix', 'error')} required">
	<label for="prefix"> <g:message code="product.prefix.label"
			default="Prefix" /> <span class="required-indicator">*</span>
	</label>
	<g:field name="prefix" type="number" value="${productInstance.prefix}"
		required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'GTIN', 'error')} required">
	<label for="GTIN"> <g:message code="product.GTIN.label"
			default="GTIN" /> <span class="required-indicator">*</span>
	</label>
	<g:field name="GTIN" type="number" value="${productInstance.GTIN}"
		required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'brand', 'error')} required">
	<label for="brand"> <g:message code="product.brand.label"
			default="Brand" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="brand" required="" value="${productInstance?.brand}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'BFADRegistrationNumber', 'error')} ">
	<label for="BFADRegistrationNumber"> <g:message
			code="product.BFADRegistrationNumber.label"
			default="BFAD Registration Number" />

	</label>
	<g:textField name="BFADRegistrationNumber"
		value="${productInstance?.BFADRegistrationNumber}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'shortName', 'error')} required">
	<label for="shortName"> <g:message
			code="product.shortName.label" default="Short Name" /> <span
		class="required-indicator">*</span>
	</label>
	<g:textField name="shortName" required=""
		value="${productInstance?.shortName}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description"> <g:message
			code="product.description.label" default="Description" /> <span
		class="required-indicator">*</span>
	</label>
	<g:textField name="description" required=""
		value="${productInstance?.description}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'netContent', 'error')} required">
	<label for="netContent"> <g:message
			code="product.netContent.label" default="Net Content" /> <span
		class="required-indicator">*</span>
	</label>
	<g:field name="netContent"
		value="${fieldValue(bean: productInstance, field: 'netContent')}"
		required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'packageType', 'error')} ">
	<label for="packageType"> <g:message
			code="product.packageType.label" default="Package Type" />

	</label>
	<g:textField name="packageType" value="${productInstance?.packageType}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'stackingHeight', 'error')} required">
	<label for="stackingHeight"> <g:message
			code="product.stackingHeight.label" default="Stacking Height" /> <span
		class="required-indicator">*</span>
	</label>
	<g:field name="stackingHeight" type="number"
		value="${productInstance.stackingHeight}" required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'unitOfMeasureStackingHeight', 'error')} required">
	<label for="unitOfMeasureStackingHeight"> <g:message
			code="product.unitOfMeasureStackingHeight.label"
			default="Unit Of Measure Stacking Height" /> <span
		class="required-indicator">*</span>
	</label>
	<g:select name="unitOfMeasureStackingHeight"
		from="${productInstance.constraints.unitOfMeasureStackingHeight.inList}"
		required="" value="${productInstance?.unitOfMeasureStackingHeight}"
		valueMessagePrefix="product.unitOfMeasureStackingHeight" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'noOfLayersPerPallet', 'error')} required">
	<label for="noOfLayersPerPallet"> <g:message
			code="product.noOfLayersPerPallet.label"
			default="No Of Layers Per Pallet" /> <span
		class="required-indicator">*</span>
	</label>
	<g:field name="noOfLayersPerPallet"
		value="${fieldValue(bean: productInstance, field: 'noOfLayersPerPallet')}"
		required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'netWeight', 'error')} required">
	<label for="netWeight"> <g:message
			code="product.netWeight.label" default="Net Weight" /> <span
		class="required-indicator">*</span>
	</label>
	<g:field name="netWeight" type="number"
		value="${productInstance.netWeight}" required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'unitOfMeasureNetWeight', 'error')} required">
	<label for="unitOfMeasureNetWeight"> <g:message
			code="product.unitOfMeasureNetWeight.label"
			default="Unit Of Measure Net Weight" /> <span
		class="required-indicator">*</span>
	</label>
	<g:select name="unitOfMeasureNetWeight"
		from="${productInstance.constraints.unitOfMeasureNetWeight.inList}"
		required="" value="${productInstance?.unitOfMeasureNetWeight}"
		valueMessagePrefix="product.unitOfMeasureNetWeight" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'tradeItemLength', 'error')} required">
	<label for="tradeItemLength"> <g:message
			code="product.tradeItemLength.label" default="Trade Item Length" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tradeItemLength" type="number"
		value="${productInstance.tradeItemLength}" required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'unitOfMeasureLength', 'error')} required">
	<label for="unitOfMeasureLength"> <g:message
			code="product.unitOfMeasureLength.label"
			default="Unit Of Measure Length" /> <span class="required-indicator">*</span>
	</label>
	<g:select name="unitOfMeasureLength"
		from="${productInstance.constraints.unitOfMeasureLength.inList}"
		required="" value="${productInstance?.unitOfMeasureLength}"
		valueMessagePrefix="product.unitOfMeasureLength" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'tradeItemWidth', 'error')} required">
	<label for="tradeItemWidth"> <g:message
			code="product.tradeItemWidth.label" default="Trade Item Width" /> <span
		class="required-indicator">*</span>
	</label>
	<g:field name="tradeItemWidth" type="number"
		value="${productInstance.tradeItemWidth}" required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'unitOfMeasureWidth', 'error')} required">
	<label for="unitOfMeasureWidth"> <g:message
			code="product.unitOfMeasureWidth.label"
			default="Unit Of Measure Width" /> <span class="required-indicator">*</span>
	</label>
	<g:select name="unitOfMeasureWidth"
		from="${productInstance.constraints.unitOfMeasureWidth.inList}"
		required="" value="${productInstance?.unitOfMeasureWidth}"
		valueMessagePrefix="product.unitOfMeasureWidth" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'tradeItemHeight', 'error')} required">
	<label for="tradeItemHeight"> <g:message
			code="product.tradeItemHeight.label" default="Trade Item Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tradeItemHeight" type="number"
		value="${productInstance.tradeItemHeight}" required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'unitOfMeasureHeight', 'error')} required">
	<label for="unitOfMeasureHeight"> <g:message
			code="product.unitOfMeasureHeight.label"
			default="Unit Of Measure Height" /> <span class="required-indicator">*</span>
	</label>
	<g:select name="unitOfMeasureHeight"
		from="${productInstance.constraints.unitOfMeasureHeight.inList}"
		required="" value="${productInstance?.unitOfMeasureHeight}"
		valueMessagePrefix="product.unitOfMeasureHeight" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'handling', 'error')} ">
	<label for="handling"> <g:message code="product.handling.label"
			default="Handling" />

	</label>
	<g:textField name="handling" value="${productInstance?.handling}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'storage', 'error')} ">
	<label for="storage"> <g:message code="product.storage.label"
			default="Storage" />

	</label>
	<g:textField name="storage" value="${productInstance?.storage}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'startDate', 'error')} ">
	<label for="startDate"> <g:message
			code="product.startDate.label" default="Start Date" />

	</label>
	<g:datePicker name="startDate" precision="day"
		value="${productInstance?.startDate}" default="none"
		noSelection="['': '']" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'endDate', 'error')} ">
	<label for="endDate"> <g:message code="product.endDate.label"
			default="End Date" />

	</label>
	<g:datePicker name="endDate" precision="day"
		value="${productInstance?.endDate}" default="none"
		noSelection="['': '']" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'minimumOrderQuantity', 'error')} required">
	<label for="minimumOrderQuantity"> <g:message
			code="product.minimumOrderQuantity.label"
			default="Minimum Order Quantity" /> <span class="required-indicator">*</span>
	</label>
	<g:field name="minimumOrderQuantity"
		value="${fieldValue(bean: productInstance, field: 'minimumOrderQuantity')}"
		required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'unitOfMeasureOrderUnit', 'error')} required">
	<label for="unitOfMeasureOrderUnit"> <g:message
			code="product.unitOfMeasureOrderUnit.label"
			default="Unit Of Measure Order Unit" /> <span
		class="required-indicator">*</span>
	</label>
	<g:select name="unitOfMeasureOrderUnit"
		from="${productInstance.constraints.unitOfMeasureOrderUnit.inList}"
		required="" value="${productInstance?.unitOfMeasureOrderUnit}"
		valueMessagePrefix="product.unitOfMeasureOrderUnit" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'view', 'error')} ">
	<label for="view"> <g:message code="product.view.label"
			default="View" />

	</label>
	<g:select name="view" from="${com.apollo.training.View?.values()}"
		keys="${com.apollo.training.View.values()*.name()}"
		value="${productInstance?.view?.name()}" valueMessagePrefix="product.view" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: productInstance, field: 'productCategory', 'error')} required">
	<label for="productCategory"> <g:message
			code="product.productCategory.label" default="Product Category" /> <span
		class="required-indicator">*</span>
	</label>
	<g:select id="productCategory" name="productCategory.id"
		from="${com.apollo.training.ProductCategory.list()}" optionKey="id"
		required="" value="${productInstance?.productCategory?.id}"
		class="many-to-one" />

</div>

<g:if test="${mode == 'create'}">
	<g:hiddenField name="status" required="" value="ADDED" />
</g:if>
<g:if test="${mode == 'edit'}">
	<g:if test="${productInstance?.status != 'approved' }">
		<g:hiddenField name="status" required="" value="EDITED" />
	</g:if>
	<g:if test="${productInstance?.status == 'approved' }">
		<g:hiddenField name="status" required="" value="APPROVED" />
	</g:if>
</g:if>
<g:if test="${mode == 'approve'}">
	<g:hiddenField name="status" required="" value="APPROVED" />
</g:if>
<g:if test="${mode == 'cancel'}">
	<g:hiddenField name="status" required="" value="CANCELLED" />
</g:if>
<g:if test="${mode == 'reject'}">
	<g:hiddenField name="status" required="" value="REJECTED" />
</g:if>
<g:if test="${mode == 'reactivate'}">
	<g:hiddenField name="status" required="" value="ADDED" />
</g:if>

