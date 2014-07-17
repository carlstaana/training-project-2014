<%@ page import="com.apollo.training.Company"%>



<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyName', 'error')} required">
	<label for="companyName"> <g:message
			code="company.companyName.label" default="Company Name" /> <span
		class="required-indicator">*</span>
	</label>
	<g:textField name="companyName" required=""
		value="${companyInstance?.companyName}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'membershipCategory', 'error')} required">
	<label for="membershipCategory"> <g:message
			code="company.membershipCategory.label" default="Membership Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="membershipCategory"
		from="${companyInstance.constraints.membershipCategory.inList}"
		required="" value="${companyInstance?.membershipCategory}"
		valueMessagePrefix="company.membershipCategory" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'natureOfBusiness', 'error')} required">
	<label for="natureOfBusiness"> <g:message code="company.natureOfBusiness.label"
			default="Nature of Business" /> <span class="required-indicator">*</span>
	</label>
	<g:select id="natureOfBusiness" name="natureOfBusiness.id"
		from="${com.apollo.training.NatureOfBusiness.list()}" optionKey="id"
		required="" value="${companyInstance?.natureOfBusiness?.id}"
		class="many-to-one" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'address', 'error')} required">
	<label for="address"> <g:message code="company.address.label"
			default="Address(Bldg.#/Street/Brgy.)" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required=""
		value="${companyInstance?.address}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'municipality', 'error')} ">
	<label for="municipality"> <g:message
			code="company.municipality.label" default="Municipality" />

	</label>
	<g:textField name="municipality"
		value="${companyInstance?.municipality}" />

</div>

<div 
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'city', 'error')} ">
	<label for="city"> <g:message code="company.city.label"
			default="City" />

	</label>
	<g:textField name="city" value="${companyInstance?.city}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'province', 'error')} ">
	<label for="province"> <g:message code="company.province.label"
			default="Province" />

	</label>
	<g:textField name="province" value="${companyInstance?.province}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode"> <g:message code="company.zipCode.label"
			default="Zip Code" /> <span class="required-indicator">*</span>
	</label>
	<g:field name="zipCode"
		value="${fieldValue(bean: companyInstance, field: 'zipCode')}"
		required="" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'phone', 'error')} ">
	<label for="phone"> <g:message code="company.phone.label"
			default="Phone" />

	</label>
	<g:textField name="phone" value="${companyInstance?.phone}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'fax', 'error')} ">
	<label for="fax"> <g:message code="company.fax.label"
			default="Fax" />

	</label>
	<g:textField name="fax" value="${companyInstance?.fax}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'email', 'error')} ">
	<label for="email"> <g:message code="company.email.label"
			default="Email" />

	</label>
	<g:textField name="email" value="${companyInstance?.email}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'website', 'error')} ">
	<label for="website"> <g:message code="company.website.label"
			default="Website" />

	</label>
	<g:textField name="website" value="${companyInstance?.website}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyHeadName', 'error')} ">
	<label for="companyHeadName"> <g:message
			code="company.companyHeadName.label" default="Company Head Name" />

	</label>
	<g:textField name="companyHeadName"
		value="${companyInstance?.companyHeadName}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyHeadDesignation', 'error')} ">
	<label for="companyHeadDesignation"> <g:message
			code="company.companyHeadDesignation.label"
			default="Company Head Designation" />

	</label>
	<g:textField name="companyHeadDesignation"
		value="${companyInstance?.companyHeadDesignation}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'technicalName', 'error')} required">
	<label for="technicalName"> <g:message
			code="company.technicalName.label" default="Technical Name" /> <span
		class="required-indicator">*</span>
	</label>
	<g:textField name="technicalName" required=""
		value="${companyInstance?.technicalName}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'technicalTitle', 'error')} ">
	<label for="technicalTitle"> <g:message
			code="company.technicalTitle.label" default="Technical Title" />

	</label>
	<g:textField name="technicalTitle"
		value="${companyInstance?.technicalTitle}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'technicalPhone', 'error')} required">
	<label for="technicalPhone"> <g:message
			code="company.technicalPhone.label" default="Technical Phone" /> <span
		class="required-indicator">*</span>
	</label>
	<g:textField name="technicalPhone" required=""
		value="${companyInstance?.technicalPhone}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'technicalFax', 'error')} ">
	<label for="technicalFax"> <g:message
			code="company.technicalFax.label" default="Technical Fax" />

	</label>
	<g:textField name="technicalFax"
		value="${companyInstance?.technicalFax}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'technicalEmail', 'error')} ">
	<label for="technicalEmail"> <g:message
			code="company.technicalEmail.label" default="Technical Email" />

	</label>
	<g:textField name="technicalEmail"
		value="${companyInstance?.technicalEmail}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'administrationName', 'error')} required">
	<label for="administrationName"> <g:message
			code="company.administrationName.label" default="Administration Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="administrationName" required=""
		value="${companyInstance?.administrationName}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'administrationTitle', 'error')} ">
	<label for="administrationTitle"> <g:message
			code="company.administrationTitle.label"
			default="Administration Title" />

	</label>
	<g:textField name="administrationTitle"
		value="${companyInstance?.administrationTitle}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'administrationPhone', 'error')} required">
	<label for="administrationPhone"> <g:message
			code="company.administrationPhone.label"
			default="Administration Phone" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="administrationPhone" required=""
		value="${companyInstance?.administrationPhone}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'administrationFax', 'error')} ">
	<label for="administrationFax"> <g:message
			code="company.administrationFax.label" default="Administration Fax" />

	</label>
	<g:textField name="administrationFax"
		value="${companyInstance?.administrationFax}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'administrationEmail', 'error')} ">
	<label for="administrationEmail"> <g:message
			code="company.administrationEmail.label"
			default="Administration Email" />

	</label>
	<g:textField name="administrationEmail"
		value="${companyInstance?.administrationEmail}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'salesMarketingName', 'error')} required">
	<label for="salesMarketingName"> <g:message
			code="company.salesMarketingName.label"
			default="Sales Marketing Name" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="salesMarketingName" required=""
		value="${companyInstance?.salesMarketingName}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'salesMarketingTitle', 'error')} ">
	<label for="salesMarketingTitle"> <g:message
			code="company.salesMarketingTitle.label"
			default="Sales Marketing Title" />

	</label>
	<g:textField name="salesMarketingTitle"
		value="${companyInstance?.salesMarketingTitle}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'salesMarketingPhone', 'error')} required">
	<label for="salesMarketingPhone"> <g:message
			code="company.salesMarketingPhone.label"
			default="Sales Marketing Phone" /> <span class="required-indicator">*</span>
	</label>
	<g:textField name="salesMarketingPhone" required=""
		value="${companyInstance?.salesMarketingPhone}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'salesMarketingFax', 'error')} ">
	<label for="salesMarketingFax"> <g:message
			code="company.salesMarketingFax.label" default="Sales Marketing Fax" />

	</label>
	<g:textField name="salesMarketingFax"
		value="${companyInstance?.salesMarketingFax}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'salesMarketingEmail', 'error')} ">
	<label for="salesMarketingEmail"> <g:message
			code="company.salesMarketingEmail.label"
			default="Sales Marketing Email" />

	</label>
	<g:textField name="salesMarketingEmail"
		value="${companyInstance?.salesMarketingEmail}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'validity', 'error')} required">
	<label for="validity"> <g:message code="company.validity.label"
			default="Validity" /> <span class="required-indicator">*</span>
	</label>
	<g:datePicker name="validity" precision="day"
		value="${companyInstance?.validity}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: companyInstance, field: 'view', 'error')} required">
	<label for="view"> <g:message code="company.view.label"
			default="View" /> <span class="required-indicator">*</span>
	</label>
	<g:select name="view" from="${com.apollo.training.View?.values()}"
		keys="${com.apollo.training.View.values()*.name()}" required=""
		value="${companyInstance?.view?.name()}" />

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


