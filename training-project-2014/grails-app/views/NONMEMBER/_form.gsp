<%@ page import="com.apollo.training.NONMEMBER" %>



<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="NONMEMBER.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${NONMEMBERInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'gln', 'error')} required">
	<label for="gln">
		<g:message code="NONMEMBER.gln.label" default="Gln" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gln" type="number" value="${NONMEMBERInstance.gln}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="NONMEMBER.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${NONMEMBERInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'municipality', 'error')} ">
	<label for="municipality">
		<g:message code="NONMEMBER.municipality.label" default="Municipality" />
		
	</label>
	<g:textField name="municipality" value="${NONMEMBERInstance?.municipality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="NONMEMBER.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${NONMEMBERInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'province', 'error')} ">
	<label for="province">
		<g:message code="NONMEMBER.province.label" default="Province" />
		
	</label>
	<g:textField name="province" value="${NONMEMBERInstance?.province}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="NONMEMBER.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${NONMEMBERInstance?.zipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="NONMEMBER.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${NONMEMBERInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="NONMEMBER.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" value="${NONMEMBERInstance?.fax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="NONMEMBER.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${NONMEMBERInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="NONMEMBER.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${NONMEMBERInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'reasonForApplyingGLN', 'error')} ">
	<label for="reasonForApplyingGLN">
		<g:message code="NONMEMBER.reasonForApplyingGLN.label" default="Reason For Applying GLN" />
		
	</label>
	<g:textField name="reasonForApplyingGLN" value="${NONMEMBERInstance?.reasonForApplyingGLN}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'tradingPartners', 'error')} ">
	<label for="tradingPartners">
		<g:message code="NONMEMBER.tradingPartners.label" default="Trading Partners" />
		
	</label>
	<g:textField name="tradingPartners" value="${NONMEMBERInstance?.tradingPartners}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'communicationNetworkUsed', 'error')} ">
	<label for="communicationNetworkUsed">
		<g:message code="NONMEMBER.communicationNetworkUsed.label" default="Communication Network Used" />
		
	</label>
	<g:textField name="communicationNetworkUsed" value="${NONMEMBERInstance?.communicationNetworkUsed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'providerName', 'error')} ">
	<label for="providerName">
		<g:message code="NONMEMBER.providerName.label" default="Provider Name" />
		
	</label>
	<g:textField name="providerName" value="${NONMEMBERInstance?.providerName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'thruEmailInternetOthersLikeVAN', 'error')} ">
	<label for="thruEmailInternetOthersLikeVAN">
		<g:message code="NONMEMBER.thruEmailInternetOthersLikeVAN.label" default="Thru Email Internet Others Like VAN" />
		
	</label>
	<g:textField name="thruEmailInternetOthersLikeVAN" value="${NONMEMBERInstance?.thruEmailInternetOthersLikeVAN}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'ebxmlEDI', 'error')} ">
	<label for="ebxmlEDI">
		<g:message code="NONMEMBER.ebxmlEDI.label" default="Ebxml EDI" />
		
	</label>
	<g:textField name="ebxmlEDI" value="${NONMEMBERInstance?.ebxmlEDI}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'businessMessageUsed', 'error')} ">
	<label for="businessMessageUsed">
		<g:message code="NONMEMBER.businessMessageUsed.label" default="Business Message Used" />
		
	</label>
	<g:textField name="businessMessageUsed" value="${NONMEMBERInstance?.businessMessageUsed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'ediMessageStandardUsed', 'error')} ">
	<label for="ediMessageStandardUsed">
		<g:message code="NONMEMBER.ediMessageStandardUsed.label" default="Edi Message Standard Used" />
		
	</label>
	<g:textField name="ediMessageStandardUsed" value="${NONMEMBERInstance?.ediMessageStandardUsed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'headName', 'error')} ">
	<label for="headName">
		<g:message code="NONMEMBER.headName.label" default="Head Name" />
		
	</label>
	<g:textField name="headName" value="${NONMEMBERInstance?.headName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'designation', 'error')} ">
	<label for="designation">
		<g:message code="NONMEMBER.designation.label" default="Designation" />
		
	</label>
	<g:textField name="designation" value="${NONMEMBERInstance?.designation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'techName', 'error')} ">
	<label for="techName">
		<g:message code="NONMEMBER.techName.label" default="Tech Name" />
		
	</label>
	<g:textField name="techName" value="${NONMEMBERInstance?.techName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'techTitle', 'error')} ">
	<label for="techTitle">
		<g:message code="NONMEMBER.techTitle.label" default="Tech Title" />
		
	</label>
	<g:textField name="techTitle" value="${NONMEMBERInstance?.techTitle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'techPhone', 'error')} ">
	<label for="techPhone">
		<g:message code="NONMEMBER.techPhone.label" default="Tech Phone" />
		
	</label>
	<g:textField name="techPhone" value="${NONMEMBERInstance?.techPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'techFax', 'error')} ">
	<label for="techFax">
		<g:message code="NONMEMBER.techFax.label" default="Tech Fax" />
		
	</label>
	<g:textField name="techFax" value="${NONMEMBERInstance?.techFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'techEmail', 'error')} ">
	<label for="techEmail">
		<g:message code="NONMEMBER.techEmail.label" default="Tech Email" />
		
	</label>
	<g:textField name="techEmail" value="${NONMEMBERInstance?.techEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'adminName', 'error')} ">
	<label for="adminName">
		<g:message code="NONMEMBER.adminName.label" default="Admin Name" />
		
	</label>
	<g:textField name="adminName" value="${NONMEMBERInstance?.adminName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'adminTitle', 'error')} ">
	<label for="adminTitle">
		<g:message code="NONMEMBER.adminTitle.label" default="Admin Title" />
		
	</label>
	<g:textField name="adminTitle" value="${NONMEMBERInstance?.adminTitle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'adminPhone', 'error')} ">
	<label for="adminPhone">
		<g:message code="NONMEMBER.adminPhone.label" default="Admin Phone" />
		
	</label>
	<g:textField name="adminPhone" value="${NONMEMBERInstance?.adminPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'adminFax', 'error')} ">
	<label for="adminFax">
		<g:message code="NONMEMBER.adminFax.label" default="Admin Fax" />
		
	</label>
	<g:textField name="adminFax" value="${NONMEMBERInstance?.adminFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'adminEmail', 'error')} ">
	<label for="adminEmail">
		<g:message code="NONMEMBER.adminEmail.label" default="Admin Email" />
		
	</label>
	<g:textField name="adminEmail" value="${NONMEMBERInstance?.adminEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'salesName', 'error')} ">
	<label for="salesName">
		<g:message code="NONMEMBER.salesName.label" default="Sales Name" />
		
	</label>
	<g:textField name="salesName" value="${NONMEMBERInstance?.salesName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'salesTitle', 'error')} ">
	<label for="salesTitle">
		<g:message code="NONMEMBER.salesTitle.label" default="Sales Title" />
		
	</label>
	<g:textField name="salesTitle" value="${NONMEMBERInstance?.salesTitle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'salesPhone', 'error')} ">
	<label for="salesPhone">
		<g:message code="NONMEMBER.salesPhone.label" default="Sales Phone" />
		
	</label>
	<g:textField name="salesPhone" value="${NONMEMBERInstance?.salesPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'salesFax', 'error')} ">
	<label for="salesFax">
		<g:message code="NONMEMBER.salesFax.label" default="Sales Fax" />
		
	</label>
	<g:textField name="salesFax" value="${NONMEMBERInstance?.salesFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'salesEmail', 'error')} ">
	<label for="salesEmail">
		<g:message code="NONMEMBER.salesEmail.label" default="Sales Email" />
		
	</label>
	<g:textField name="salesEmail" value="${NONMEMBERInstance?.salesEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'natureOfBusiness', 'error')} ">
	<label for="natureOfBusiness">
		<g:message code="NONMEMBER.natureOfBusiness.label" default="Nature Of Business" />
		
	</label>
	<g:textField name="natureOfBusiness" value="${NONMEMBERInstance?.natureOfBusiness}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="NONMEMBER.products.label" default="Products" />
		
	</label>
	<g:textField name="products" value="${NONMEMBERInstance?.products}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'issueDate', 'error')} ">
	<label for="issueDate">
		<g:message code="NONMEMBER.issueDate.label" default="Issue Date" />
		
	</label>
	<g:datePicker name="issueDate" precision="day"  value="${NONMEMBERInstance?.issueDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: NONMEMBERInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="NONMEMBER.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${NONMEMBERInstance?.remarks}"/>

</div>

