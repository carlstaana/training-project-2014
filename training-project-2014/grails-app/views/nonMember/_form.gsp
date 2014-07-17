<%@ page import="com.apollo.training.NonMember" %>



<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="nonMember.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${nonMemberInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'gln', 'error')} required">
	<label for="gln">
		<g:message code="nonMember.gln.label" default="Gln" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gln" type="number" value="${nonMemberInstance.gln}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="nonMember.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${nonMemberInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'municipality', 'error')} ">
	<label for="municipality">
		<g:message code="nonMember.municipality.label" default="Municipality" />
		
	</label>
	<g:textField name="municipality" value="${nonMemberInstance?.municipality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="nonMember.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${nonMemberInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'province', 'error')} ">
	<label for="province">
		<g:message code="nonMember.province.label" default="Province" />
		
	</label>
	<g:textField name="province" value="${nonMemberInstance?.province}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="nonMember.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${nonMemberInstance?.zipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="nonMember.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${nonMemberInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="nonMember.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" value="${nonMemberInstance?.fax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="nonMember.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${nonMemberInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="nonMember.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${nonMemberInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'reasonForApplyingGLN', 'error')} ">
	<label for="reasonForApplyingGLN">
		<g:message code="nonMember.reasonForApplyingGLN.label" default="Reason For Applying GLN" />
		
	</label>
	<g:textField name="reasonForApplyingGLN" value="${nonMemberInstance?.reasonForApplyingGLN}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'tradingPartners', 'error')} ">
	<label for="tradingPartners">
		<g:message code="nonMember.tradingPartners.label" default="Trading Partners" />
		
	</label>
	<g:textField name="tradingPartners" value="${nonMemberInstance?.tradingPartners}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'communicationNetworkUsed', 'error')} ">
	<label for="communicationNetworkUsed">
		<g:message code="nonMember.communicationNetworkUsed.label" default="Communication Network Used" />
		
	</label>
	<g:textField name="communicationNetworkUsed" value="${nonMemberInstance?.communicationNetworkUsed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'providerName', 'error')} ">
	<label for="providerName">
		<g:message code="nonMember.providerName.label" default="Provider Name" />
		
	</label>
	<g:textField name="providerName" value="${nonMemberInstance?.providerName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'thruEmailInternetOthersLikeVAN', 'error')} ">
	<label for="thruEmailInternetOthersLikeVAN">
		<g:message code="nonMember.thruEmailInternetOthersLikeVAN.label" default="Thru Email Internet Others Like VAN" />
		
	</label>
	<g:textField name="thruEmailInternetOthersLikeVAN" value="${nonMemberInstance?.thruEmailInternetOthersLikeVAN}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'ebxmlEDI', 'error')} ">
	<label for="ebxmlEDI">
		<g:message code="nonMember.ebxmlEDI.label" default="Ebxml EDI" />
		
	</label>
	<g:textField name="ebxmlEDI" value="${nonMemberInstance?.ebxmlEDI}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'businessMessageUsed', 'error')} ">
	<label for="businessMessageUsed">
		<g:message code="nonMember.businessMessageUsed.label" default="Business Message Used" />
		
	</label>
	<g:textField name="businessMessageUsed" value="${nonMemberInstance?.businessMessageUsed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'ediMessageStandardUsed', 'error')} ">
	<label for="ediMessageStandardUsed">
		<g:message code="nonMember.ediMessageStandardUsed.label" default="Edi Message Standard Used" />
		
	</label>
	<g:textField name="ediMessageStandardUsed" value="${nonMemberInstance?.ediMessageStandardUsed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'headName', 'error')} ">
	<label for="headName">
		<g:message code="nonMember.headName.label" default="Head Name" />
		
	</label>
	<g:textField name="headName" value="${nonMemberInstance?.headName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'designation', 'error')} ">
	<label for="designation">
		<g:message code="nonMember.designation.label" default="Designation" />
		
	</label>
	<g:textField name="designation" value="${nonMemberInstance?.designation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'techName', 'error')} ">
	<label for="techName">
		<g:message code="nonMember.techName.label" default="Tech Name" />
		
	</label>
	<g:textField name="techName" value="${nonMemberInstance?.techName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'techTitle', 'error')} ">
	<label for="techTitle">
		<g:message code="nonMember.techTitle.label" default="Tech Title" />
		
	</label>
	<g:textField name="techTitle" value="${nonMemberInstance?.techTitle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'techPhone', 'error')} ">
	<label for="techPhone">
		<g:message code="nonMember.techPhone.label" default="Tech Phone" />
		
	</label>
	<g:textField name="techPhone" value="${nonMemberInstance?.techPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'techFax', 'error')} ">
	<label for="techFax">
		<g:message code="nonMember.techFax.label" default="Tech Fax" />
		
	</label>
	<g:textField name="techFax" value="${nonMemberInstance?.techFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'techEmail', 'error')} ">
	<label for="techEmail">
		<g:message code="nonMember.techEmail.label" default="Tech Email" />
		
	</label>
	<g:textField name="techEmail" value="${nonMemberInstance?.techEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'adminName', 'error')} ">
	<label for="adminName">
		<g:message code="nonMember.adminName.label" default="Admin Name" />
		
	</label>
	<g:textField name="adminName" value="${nonMemberInstance?.adminName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'adminTitle', 'error')} ">
	<label for="adminTitle">
		<g:message code="nonMember.adminTitle.label" default="Admin Title" />
		
	</label>
	<g:textField name="adminTitle" value="${nonMemberInstance?.adminTitle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'adminPhone', 'error')} ">
	<label for="adminPhone">
		<g:message code="nonMember.adminPhone.label" default="Admin Phone" />
		
	</label>
	<g:textField name="adminPhone" value="${nonMemberInstance?.adminPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'adminFax', 'error')} ">
	<label for="adminFax">
		<g:message code="nonMember.adminFax.label" default="Admin Fax" />
		
	</label>
	<g:textField name="adminFax" value="${nonMemberInstance?.adminFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'adminEmail', 'error')} ">
	<label for="adminEmail">
		<g:message code="nonMember.adminEmail.label" default="Admin Email" />
		
	</label>
	<g:textField name="adminEmail" value="${nonMemberInstance?.adminEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'salesName', 'error')} ">
	<label for="salesName">
		<g:message code="nonMember.salesName.label" default="Sales Name" />
		
	</label>
	<g:textField name="salesName" value="${nonMemberInstance?.salesName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'salesTitle', 'error')} ">
	<label for="salesTitle">
		<g:message code="nonMember.salesTitle.label" default="Sales Title" />
		
	</label>
	<g:textField name="salesTitle" value="${nonMemberInstance?.salesTitle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'salesPhone', 'error')} ">
	<label for="salesPhone">
		<g:message code="nonMember.salesPhone.label" default="Sales Phone" />
		
	</label>
	<g:textField name="salesPhone" value="${nonMemberInstance?.salesPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'salesFax', 'error')} ">
	<label for="salesFax">
		<g:message code="nonMember.salesFax.label" default="Sales Fax" />
		
	</label>
	<g:textField name="salesFax" value="${nonMemberInstance?.salesFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'salesEmail', 'error')} ">
	<label for="salesEmail">
		<g:message code="nonMember.salesEmail.label" default="Sales Email" />
		
	</label>
	<g:textField name="salesEmail" value="${nonMemberInstance?.salesEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'natureOfBusiness', 'error')} ">
	<label for="natureOfBusiness">
		<g:message code="nonMember.natureOfBusiness.label" default="Nature Of Business" />
		
	</label>
	<g:textField name="natureOfBusiness" value="${nonMemberInstance?.natureOfBusiness}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="nonMember.products.label" default="Products" />
		
	</label>
	<g:textField name="products" value="${nonMemberInstance?.products}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'issueDate', 'error')} ">
	<label for="issueDate">
		<g:message code="nonMember.issueDate.label" default="Issue Date" />
		
	</label>
	<g:datePicker name="issueDate" precision="day"  value="${nonMemberInstance?.issueDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: nonMemberInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="nonMember.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${nonMemberInstance?.remarks}"/>

</div>

