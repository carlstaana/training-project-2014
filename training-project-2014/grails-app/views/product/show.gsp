
<%@ page import="com.apollo.training.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-product" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="show-product" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list product">

			<g:if test="${productInstance?.company}">
				<li class="fieldcontain"><span id="company-label"
					class="property-label"><g:message
							code="product.company.label" default="Company" /></span> <span
					class="property-value" aria-labelledby="company-label"><g:fieldValue
							bean="${productInstance}" field="company" /></span></li>
			</g:if>

			<g:if test="${productInstance?.subCompany}">
				<li class="fieldcontain"><span id="subCompany-label"
					class="property-label"><g:message
							code="product.subCompany.label" default="Sub Company" /></span> <span
					class="property-value" aria-labelledby="subCompany-label"><g:fieldValue
							bean="${productInstance}" field="subCompany" /></span></li>
			</g:if>

			<g:if test="${productInstance?.GLN}">
				<li class="fieldcontain"><span id="GLN-label"
					class="property-label"><g:message code="product.GLN.label"
							default="GLN" /></span> <span class="property-value"
					aria-labelledby="GLN-label"><g:fieldValue
							bean="${productInstance}" field="GLN" /></span></li>
			</g:if>

			<g:if test="${productInstance?.prefix}">
				<li class="fieldcontain"><span id="prefix-label"
					class="property-label"><g:message
							code="product.prefix.label" default="Prefix" /></span> <span
					class="property-value" aria-labelledby="prefix-label"><g:fieldValue
							bean="${productInstance}" field="prefix" /></span></li>
			</g:if>

			<g:if test="${productInstance?.GTIN}">
				<li class="fieldcontain"><span id="GTIN-label"
					class="property-label"><g:message code="product.GTIN.label"
							default="GTIN" /></span> <span class="property-value"
					aria-labelledby="GTIN-label"><g:fieldValue
							bean="${productInstance}" field="GTIN" /></span></li>
			</g:if>

			<g:if test="${productInstance?.brand}">
				<li class="fieldcontain"><span id="brand-label"
					class="property-label"><g:message code="product.brand.label"
							default="Brand" /></span> <span class="property-value"
					aria-labelledby="brand-label"><g:fieldValue
							bean="${productInstance}" field="brand" /></span></li>
			</g:if>

			<g:if test="${productInstance?.BFADRegistrationNumber}">
				<li class="fieldcontain"><span
					id="BFADRegistrationNumber-label" class="property-label"><g:message
							code="product.BFADRegistrationNumber.label"
							default="BFADR egistration Number" /></span> <span
					class="property-value"
					aria-labelledby="BFADRegistrationNumber-label"><g:fieldValue
							bean="${productInstance}" field="BFADRegistrationNumber" /></span></li>
			</g:if>

			<g:if test="${productInstance?.shortName}">
				<li class="fieldcontain"><span id="shortName-label"
					class="property-label"><g:message
							code="product.shortName.label" default="Short Name" /></span> <span
					class="property-value" aria-labelledby="shortName-label"><g:fieldValue
							bean="${productInstance}" field="shortName" /></span></li>
			</g:if>

			<g:if test="${productInstance?.description}">
				<li class="fieldcontain"><span id="description-label"
					class="property-label"><g:message
							code="product.description.label" default="Description" /></span> <span
					class="property-value" aria-labelledby="description-label"><g:fieldValue
							bean="${productInstance}" field="description" /></span></li>
			</g:if>

			<g:if test="${productInstance?.netContent}">
				<li class="fieldcontain"><span id="netContent-label"
					class="property-label"><g:message
							code="product.netContent.label" default="Net Content" /></span> <span
					class="property-value" aria-labelledby="netContent-label"><g:fieldValue
							bean="${productInstance}" field="netContent" /></span></li>
			</g:if>

			<g:if test="${productInstance?.packageType}">
				<li class="fieldcontain"><span id="packageType-label"
					class="property-label"><g:message
							code="product.packageType.label" default="Package Type" /></span> <span
					class="property-value" aria-labelledby="packageType-label"><g:fieldValue
							bean="${productInstance}" field="packageType" /></span></li>
			</g:if>

			<g:if test="${productInstance?.stackingHeight}">
				<li class="fieldcontain"><span id="stackingHeight-label"
					class="property-label"><g:message
							code="product.stackingHeight.label" default="Stacking Height" /></span>

					<span class="property-value" aria-labelledby="stackingHeight-label"><g:fieldValue
							bean="${productInstance}" field="stackingHeight" /></span></li>
			</g:if>

			<g:if test="${productInstance?.unitOfMeasureStackingHeight}">
				<li class="fieldcontain"><span
					id="unitOfMeasureStackingHeight-label" class="property-label"><g:message
							code="product.unitOfMeasureStackingHeight.label"
							default="Unit Of Measure Stacking Height" /></span> <span
					class="property-value"
					aria-labelledby="unitOfMeasureStackingHeight-label"><g:fieldValue
							bean="${productInstance}" field="unitOfMeasureStackingHeight" /></span>

				</li>
			</g:if>

			<g:if test="${productInstance?.noOfLayersPerPallet}">
				<li class="fieldcontain"><span id="noOfLayersPerPallet-label"
					class="property-label"><g:message
							code="product.noOfLayersPerPallet.label"
							default="No Of Layers Per Pallet" /></span> <span
					class="property-value" aria-labelledby="noOfLayersPerPallet-label"><g:fieldValue
							bean="${productInstance}" field="noOfLayersPerPallet" /></span></li>
			</g:if>

			<g:if test="${productInstance?.netWeight}">
				<li class="fieldcontain"><span id="netWeight-label"
					class="property-label"><g:message
							code="product.netWeight.label" default="Net Weight" /></span> <span
					class="property-value" aria-labelledby="netWeight-label"><g:fieldValue
							bean="${productInstance}" field="netWeight" /></span></li>
			</g:if>

			<g:if test="${productInstance?.unitOfMeasureNetWeight}">
				<li class="fieldcontain"><span
					id="unitOfMeasureNetWeight-label" class="property-label"><g:message
							code="product.unitOfMeasureNetWeight.label"
							default="Unit Of Measure Net Weight" /></span> <span
					class="property-value"
					aria-labelledby="unitOfMeasureNetWeight-label"><g:fieldValue
							bean="${productInstance}" field="unitOfMeasureNetWeight" /></span></li>
			</g:if>

			<g:if test="${productInstance?.tradeItemLength}">
				<li class="fieldcontain"><span id="tradeItemLength-label"
					class="property-label"><g:message
							code="product.tradeItemLength.label" default="Trade Item Length" /></span>

					<span class="property-value"
					aria-labelledby="tradeItemLength-label"><g:fieldValue
							bean="${productInstance}" field="tradeItemLength" /></span></li>
			</g:if>

			<g:if test="${productInstance?.unitOfMeasureLength}">
				<li class="fieldcontain"><span id="unitOfMeasureLength-label"
					class="property-label"><g:message
							code="product.unitOfMeasureLength.label"
							default="Unit Of Measure Length" /></span> <span class="property-value"
					aria-labelledby="unitOfMeasureLength-label"><g:fieldValue
							bean="${productInstance}" field="unitOfMeasureLength" /></span></li>
			</g:if>

			<g:if test="${productInstance?.tradeItemWidth}">
				<li class="fieldcontain"><span id="tradeItemWidth-label"
					class="property-label"><g:message
							code="product.tradeItemWidth.label" default="Trade Item Width" /></span>

					<span class="property-value" aria-labelledby="tradeItemWidth-label"><g:fieldValue
							bean="${productInstance}" field="tradeItemWidth" /></span></li>
			</g:if>

			<g:if test="${productInstance?.unitOfMeasureWidth}">
				<li class="fieldcontain"><span id="unitOfMeasureWidth-label"
					class="property-label"><g:message
							code="product.unitOfMeasureWidth.label"
							default="Unit Of Measure Width" /></span> <span class="property-value"
					aria-labelledby="unitOfMeasureWidth-label"><g:fieldValue
							bean="${productInstance}" field="unitOfMeasureWidth" /></span></li>
			</g:if>

			<g:if test="${productInstance?.tradeItemHeight}">
				<li class="fieldcontain"><span id="tradeItemHeight-label"
					class="property-label"><g:message
							code="product.tradeItemHeight.label" default="Trade Item Height" /></span>

					<span class="property-value"
					aria-labelledby="tradeItemHeight-label"><g:fieldValue
							bean="${productInstance}" field="tradeItemHeight" /></span></li>
			</g:if>

			<g:if test="${productInstance?.unitOfMeasureHeight}">
				<li class="fieldcontain"><span id="unitOfMeasureHeight-label"
					class="property-label"><g:message
							code="product.unitOfMeasureHeight.label"
							default="Unit Of Measure Height" /></span> <span class="property-value"
					aria-labelledby="unitOfMeasureHeight-label"><g:fieldValue
							bean="${productInstance}" field="unitOfMeasureHeight" /></span></li>
			</g:if>

			<g:if test="${productInstance?.handling}">
				<li class="fieldcontain"><span id="handling-label"
					class="property-label"><g:message
							code="product.handling.label" default="Handling" /></span> <span
					class="property-value" aria-labelledby="handling-label"><g:fieldValue
							bean="${productInstance}" field="handling" /></span></li>
			</g:if>

			<g:if test="${productInstance?.storage}">
				<li class="fieldcontain"><span id="storage-label"
					class="property-label"><g:message
							code="product.storage.label" default="Storage" /></span> <span
					class="property-value" aria-labelledby="storage-label"><g:fieldValue
							bean="${productInstance}" field="storage" /></span></li>
			</g:if>

			<g:if test="${productInstance?.startDate}">
				<li class="fieldcontain"><span id="startDate-label"
					class="property-label"><g:message
							code="product.startDate.label" default="Start Date" /></span> <span
					class="property-value" aria-labelledby="startDate-label"><g:formatDate
							date="${productInstance?.startDate}" /></span></li>
			</g:if>

			<g:if test="${productInstance?.endDate}">
				<li class="fieldcontain"><span id="endDate-label"
					class="property-label"><g:message
							code="product.endDate.label" default="End Date" /></span> <span
					class="property-value" aria-labelledby="endDate-label"><g:formatDate
							date="${productInstance?.endDate}" /></span></li>
			</g:if>

			<g:if test="${productInstance?.minimumOrderQuantity}">
				<li class="fieldcontain"><span id="minimumOrderQuantity-label"
					class="property-label"><g:message
							code="product.minimumOrderQuantity.label"
							default="Minimum Order Quantity" /></span> <span class="property-value"
					aria-labelledby="minimumOrderQuantity-label"><g:fieldValue
							bean="${productInstance}" field="minimumOrderQuantity" /></span></li>
			</g:if>

			<g:if test="${productInstance?.unitOfMeasureOrderUnit}">
				<li class="fieldcontain"><span
					id="unitOfMeasureOrderUnit-label" class="property-label"><g:message
							code="product.unitOfMeasureOrderUnit.label"
							default="Unit Of Measure Order Unit" /></span> <span
					class="property-value"
					aria-labelledby="unitOfMeasureOrderUnit-label"><g:fieldValue
							bean="${productInstance}" field="unitOfMeasureOrderUnit" /></span></li>
			</g:if>

			<g:if test="${productInstance?.view}">
				<li class="fieldcontain"><span id="view-label"
					class="property-label"><g:message code="product.view.label"
							default="View" /></span> <span class="property-value"
					aria-labelledby="view-label"><g:fieldValue
							bean="${productInstance}" field="view" /></span></li>
			</g:if>

			<g:if test="${productInstance?.productCategory}">
				<li class="fieldcontain"><span id="productCategory-label"
					class="property-label"><g:message
							code="product.productCategory.label" default="Product Category" /></span>

					<span class="property-value"
					aria-labelledby="productCategory-label"><g:link
							controller="productCategory" action="show"
							id="${productInstance?.productCategory?.id}">
							${productInstance?.productCategory?.encodeAsHTML()}
						</g:link></span></li>
			</g:if>

			<g:if test="${productInstance?.status}">
				<li class="fieldcontain"><span id="status-label"
					class="property-label"><g:message
							code="product.status.label" default="Status" /></span> <span
					class="property-value" aria-labelledby="status-label"><g:fieldValue
							bean="${productInstance}" field="status" /></span></li>
			</g:if>

		</ol>
		<g:form url="[resource:productInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link action="index">Cancel</g:link>
				<g:link class="edit" action="edit" resource="${productInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>

		<g:if test="${productInstance?.status != 'CANCELLED'}">
			<g:form url="[resource:productInstance, action:'cancel']">
				<fieldset class="buttons">
					<g:submitButton name="cancel" class="cancel"
						value="${message(code: 'default.button.cancel.label', default: 'Cancel Product')}" />
				</fieldset>
			</g:form>
			<g:if
				test="${productInstance?.status == 'ADDED' || productInstance?.status == 'EDITED'}">

				<g:form url="[resource:productInstance, action:'reject']">
					<fieldset class="buttons">
						<g:submitButton name="reject" class="reject"
							value="${message(code: 'default.button.reject.label', default: 'Reject')}" />
					</fieldset>
				</g:form>

				<g:form url="[resource:productInstance, action:'approve']">
					<fieldset class="buttons">
						<g:submitButton name="approve" class="approve"
							value="${message(code: 'default.button.approve.label', default: 'Approve')}" />
					</fieldset>
				</g:form>
			</g:if>
		</g:if>

		<g:else>
			<g:form url="[resource:productInstance, action:'reactivate']">
				<fieldset class="buttons">
					<g:submitButton name="reactivate" class="reactivate"
						value="${message(code: 'default.button.reactivate.label', default: 'Reactivate')}" />
				</fieldset>
			</g:form>
		</g:else>

	</div>
</body>
</html>
