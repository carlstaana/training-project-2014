
<%@ page import="com.apollo.training.Company"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'company.label', default: 'Company')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div id="module">
	<div id="show-company" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list company">

			<g:if test="${companyInstance?.companyName}">
				<li class="fieldcontain"><span id="companyName-label"
					class="property-label"><g:message
							code="company.companyName.label" default="Company Name" /></span> <span
					class="property-value" aria-labelledby="companyName-label"><g:fieldValue
							bean="${companyInstance}" field="companyName" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.membershipCategory}">
				<li class="fieldcontain"><span id="membershipCategory-label"
					class="property-label"><g:message
							code="company.membershipCategory.label"
							default="Membership Category" /></span> <span class="property-value"
					aria-labelledby="membershipCategory-label"><g:fieldValue
							bean="${companyInstance}" field="membershipCategory" /></span></li>
			</g:if>
			
			<g:if test="${companyInstance?.natureOfBusiness}">
				<li class="fieldcontain"><span id="natureOfBusiness-label"
					class="property-label"><g:message code="company.natureOfBusiness.label"
							default="Nature of Business" /></span> <span class="property-value"
					aria-labelledby="natureOfBusiness-label"><g:fieldValue
							bean="${companyInstance}" field="natureOfBusiness" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.address}">
				<li class="fieldcontain"><span id="address-label"
					class="property-label"><g:message
							code="company.address.label" default="Address" /></span> <span
					class="property-value" aria-labelledby="address-label"><g:fieldValue
							bean="${companyInstance}" field="address" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.municipality}">
				<li class="fieldcontain"><span id="municipality-label"
					class="property-label"><g:message
							code="company.municipality.label" default="Municipality" /></span> <span
					class="property-value" aria-labelledby="municipality-label"><g:fieldValue
							bean="${companyInstance}" field="municipality" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.city}">
				<li class="fieldcontain"><span id="city-label"
					class="property-label"><g:message code="company.city.label"
							default="City" /></span> <span class="property-value"
					aria-labelledby="city-label"><g:fieldValue
							bean="${companyInstance}" field="city" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.province}">
				<li class="fieldcontain"><span id="province-label"
					class="property-label"><g:message
							code="company.province.label" default="Province" /></span> <span
					class="property-value" aria-labelledby="province-label"><g:fieldValue
							bean="${companyInstance}" field="province" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.zipCode}">
				<li class="fieldcontain"><span id="zipCode-label"
					class="property-label"><g:message
							code="company.zipCode.label" default="Zip Code" /></span> <span
					class="property-value" aria-labelledby="zipCode-label"><g:fieldValue
							bean="${companyInstance}" field="zipCode" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.phone}">
				<li class="fieldcontain"><span id="phone-label"
					class="property-label"><g:message code="company.phone.label"
							default="Phone" /></span> <span class="property-value"
					aria-labelledby="phone-label"><g:fieldValue
							bean="${companyInstance}" field="phone" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.fax}">
				<li class="fieldcontain"><span id="fax-label"
					class="property-label"><g:message code="company.fax.label"
							default="Fax" /></span> <span class="property-value"
					aria-labelledby="fax-label"><g:fieldValue
							bean="${companyInstance}" field="fax" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.email}">
				<li class="fieldcontain"><span id="email-label"
					class="property-label"><g:message code="company.email.label"
							default="Email" /></span> <span class="property-value"
					aria-labelledby="email-label"><g:fieldValue
							bean="${companyInstance}" field="email" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.website}">
				<li class="fieldcontain"><span id="website-label"
					class="property-label"><g:message
							code="company.website.label" default="Website" /></span> <span
					class="property-value" aria-labelledby="website-label"><g:fieldValue
							bean="${companyInstance}" field="website" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.companyHeadName}">
				<li class="fieldcontain"><span id="companyHeadName-label"
					class="property-label"><g:message
							code="company.companyHeadName.label" default="Company Head Name" /></span>

					<span class="property-value"
					aria-labelledby="companyHeadName-label"><g:fieldValue
							bean="${companyInstance}" field="companyHeadName" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.companyHeadDesignation}">
				<li class="fieldcontain"><span
					id="companyHeadDesignation-label" class="property-label"><g:message
							code="company.companyHeadDesignation.label"
							default="Company Head Designation" /></span> <span
					class="property-value"
					aria-labelledby="companyHeadDesignation-label"><g:fieldValue
							bean="${companyInstance}" field="companyHeadDesignation" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.technicalName}">
				<li class="fieldcontain"><span id="technicalName-label"
					class="property-label"><g:message
							code="company.technicalName.label" default="Technical Name" /></span> <span
					class="property-value" aria-labelledby="technicalName-label"><g:fieldValue
							bean="${companyInstance}" field="technicalName" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.technicalTitle}">
				<li class="fieldcontain"><span id="technicalTitle-label"
					class="property-label"><g:message
							code="company.technicalTitle.label" default="Technical Title" /></span>

					<span class="property-value" aria-labelledby="technicalTitle-label"><g:fieldValue
							bean="${companyInstance}" field="technicalTitle" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.technicalPhone}">
				<li class="fieldcontain"><span id="technicalPhone-label"
					class="property-label"><g:message
							code="company.technicalPhone.label" default="Technical Phone" /></span>

					<span class="property-value" aria-labelledby="technicalPhone-label"><g:fieldValue
							bean="${companyInstance}" field="technicalPhone" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.technicalFax}">
				<li class="fieldcontain"><span id="technicalFax-label"
					class="property-label"><g:message
							code="company.technicalFax.label" default="Technical Fax" /></span> <span
					class="property-value" aria-labelledby="technicalFax-label"><g:fieldValue
							bean="${companyInstance}" field="technicalFax" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.technicalEmail}">
				<li class="fieldcontain"><span id="technicalEmail-label"
					class="property-label"><g:message
							code="company.technicalEmail.label" default="Technical Email" /></span>

					<span class="property-value" aria-labelledby="technicalEmail-label"><g:fieldValue
							bean="${companyInstance}" field="technicalEmail" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.administrationName}">
				<li class="fieldcontain"><span id="administrationName-label"
					class="property-label"><g:message
							code="company.administrationName.label"
							default="Administration Name" /></span> <span class="property-value"
					aria-labelledby="administrationName-label"><g:fieldValue
							bean="${companyInstance}" field="administrationName" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.administrationTitle}">
				<li class="fieldcontain"><span id="administrationTitle-label"
					class="property-label"><g:message
							code="company.administrationTitle.label"
							default="Administration Title" /></span> <span class="property-value"
					aria-labelledby="administrationTitle-label"><g:fieldValue
							bean="${companyInstance}" field="administrationTitle" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.administrationPhone}">
				<li class="fieldcontain"><span id="administrationPhone-label"
					class="property-label"><g:message
							code="company.administrationPhone.label"
							default="Administration Phone" /></span> <span class="property-value"
					aria-labelledby="administrationPhone-label"><g:fieldValue
							bean="${companyInstance}" field="administrationPhone" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.administrationFax}">
				<li class="fieldcontain"><span id="administrationFax-label"
					class="property-label"><g:message
							code="company.administrationFax.label"
							default="Administration Fax" /></span> <span class="property-value"
					aria-labelledby="administrationFax-label"><g:fieldValue
							bean="${companyInstance}" field="administrationFax" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.administrationEmail}">
				<li class="fieldcontain"><span id="administrationEmail-label"
					class="property-label"><g:message
							code="company.administrationEmail.label"
							default="Administration Email" /></span> <span class="property-value"
					aria-labelledby="administrationEmail-label"><g:fieldValue
							bean="${companyInstance}" field="administrationEmail" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.salesMarketingName}">
				<li class="fieldcontain"><span id="salesMarketingName-label"
					class="property-label"><g:message
							code="company.salesMarketingName.label"
							default="Sales Marketing Name" /></span> <span class="property-value"
					aria-labelledby="salesMarketingName-label"><g:fieldValue
							bean="${companyInstance}" field="salesMarketingName" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.salesMarketingTitle}">
				<li class="fieldcontain"><span id="salesMarketingTitle-label"
					class="property-label"><g:message
							code="company.salesMarketingTitle.label"
							default="Sales Marketing Title" /></span> <span class="property-value"
					aria-labelledby="salesMarketingTitle-label"><g:fieldValue
							bean="${companyInstance}" field="salesMarketingTitle" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.salesMarketingPhone}">
				<li class="fieldcontain"><span id="salesMarketingPhone-label"
					class="property-label"><g:message
							code="company.salesMarketingPhone.label"
							default="Sales Marketing Phone" /></span> <span class="property-value"
					aria-labelledby="salesMarketingPhone-label"><g:fieldValue
							bean="${companyInstance}" field="salesMarketingPhone" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.salesMarketingFax}">
				<li class="fieldcontain"><span id="salesMarketingFax-label"
					class="property-label"><g:message
							code="company.salesMarketingFax.label"
							default="Sales Marketing Fax" /></span> <span class="property-value"
					aria-labelledby="salesMarketingFax-label"><g:fieldValue
							bean="${companyInstance}" field="salesMarketingFax" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.salesMarketingEmail}">
				<li class="fieldcontain"><span id="salesMarketingEmail-label"
					class="property-label"><g:message
							code="company.salesMarketingEmail.label"
							default="Sales Marketing Email" /></span> <span class="property-value"
					aria-labelledby="salesMarketingEmail-label"><g:fieldValue
							bean="${companyInstance}" field="salesMarketingEmail" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.products}">
				<li class="fieldcontain"><span id="products-label"
					class="property-label"><g:message
							code="company.products.label" default="Products" /></span> <span
					class="property-value" aria-labelledby="products-label"><g:link
							controller="product" action="show"
							id="${companyInstance?.products?.id}">
							${companyInstance?.products?.encodeAsHTML()}
						</g:link></span></li>
			</g:if>

			<g:if test="${companyInstance?.validity}">
				<li class="fieldcontain"><span id="validity-label"
					class="property-label"><g:message
							code="company.validity.label" default="Validity" /></span> <span
					class="property-value" aria-labelledby="validity-label"><g:formatDate
							date="${companyInstance?.validity}" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.view}">
				<li class="fieldcontain"><span id="view-label"
					class="property-label"><g:message code="company.view.label"
							default="View" /></span> <span class="property-value"
					aria-labelledby="view-label"><g:fieldValue
							bean="${companyInstance}" field="view" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.companyPayment}">
				<li class="fieldcontain"><span id="companyPayment-label"
					class="property-label"><g:message
							code="company.companyPayment.label" default="Company Payment" /></span>

					<span class="property-value" aria-labelledby="companyPayment-label">
						<g:each in="${companyInstance?.companyPayment}" var="payment">
							<tr>
								<td>Membership Fee-</td>
								<td>
									${payment.membershipFee}<br>
								</td>
								<td>Seminar Fee-</td>
								<td>
									${payment.seminarFee}<br>
								</td>
								<td>Entrance Fee-</td>
								<td>
									${payment.entranceFee}<br>
								</td>
							</tr>
						</g:each>
				</span></li>
			</g:if>

			<g:if test="${companyInstance?.status}">
				<li class="fieldcontain"><span id="status-label"
					class="property-label"><g:message
							code="company.status.label" default="Status" /></span> <span
					class="property-value" aria-labelledby="status-label"><g:fieldValue
							bean="${companyInstance}" field="status" /></span></li>
			</g:if>

			<g:if test="${companyInstance?.companyRemarks}">
				<li class="fieldcontain"><span id="companyRemarks-label"
					class="property-label"><g:message
							code="company.companyRemarks.label" default="Company Remarks" /></span>

					<span class="property-value" aria-labelledby="companyRemarks-label">

						<g:each in="${companyInstance?.companyRemarks}" var="remarks">
							<tr>
								<td>
									${remarks.message }<br>
								</td>
							</tr>
						</g:each>
				</span></li>
			</g:if>

		</ol>
		<g:form resource="${companyInstance}" >
			<fieldset class="buttons">
				
				<g:link class="edit" action="edit" resource="${companyInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					
				<g:if test="${companyInstance?.status != 'CANCELLED'}">
					<g:if test="${companyInstance?.status == 'APPROVED' }">
						<g:actionSubmit action="cancel" class="cancel" value="${message(code: 'default.button.cancel.label', default: 'Cancel Membership')}" />
					</g:if>
				
					<g:if test="${companyInstance?.status == 'ADDED' || companyInstance?.status == 'EDITED' || companyInstance?.status == 'REJECTED' }">
						<g:if test="${companyInstance?.status != 'REJECTED' }">
							<g:actionSubmit action="reject" class="reject"
								value="${message(code: 'default.button.reject.label', default: 'Reject')}" />
						</g:if>
						<g:actionSubmit action="approve" class="approve"
							value="${message(code: 'default.button.approve.label', default: 'Approve')}" />
					</g:if>
					
				</g:if>
				<g:else>
					<g:actionSubmit action="reactivate" class="reactivate"
						value="${message(code: 'default.button.reactivate.label', default: 'Reactivate')}" />
				</g:else>
				
				<g:link class="cancel" action="index"><g:message code="default.button.cancel.label" default="Cancel" /></g:link>
			</fieldset>
			<fieldset class="buttons">				
				<g:link controller="CompanyRemarks" action="create" class="edit"
					params="['company.id': companyInstance?.id]">
					${message(code:'default.add.label', args: [message(code:'companyRemarks.label', default: 'Company Remarks')]) }
				</g:link>

				<g:if test="${companyInstance?.companyPayment.size() == 0}">
					<g:link controller="CompanyPayment" action="create" class="edit"
						params="['company.id': companyInstance?.id]">
						${message(code:'Add Company Payment', args: [message(code:'companyPayment.label', default: 'Add Company Payment')]) }
					</g:link>
				</g:if>
				<g:else>
					<g:link controller="CompanyPayment" action="index" class="edit"
						params="['company.id': companyInstance?.id]">
						${message(code:'View Company Payment', args: [message(code:'companyPayment.label', default: 'View Company Payment')]) }
					</g:link>
				</g:else>
			</fieldset>
		</g:form>

	</div>
	</div>
</body>
</html>
