<%@ page import="com.apollo.training.GS1User" %>



<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="GS1User.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${GS1UserInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="GS1User.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${GS1UserInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'retypePassword', 'error')} required">
	<label for="retypePassword">
		<g:message code="GS1User.retypePassword.label" default="Retype Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="retypePassword" required="" value="${GS1UserInstance?.retypePassword}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="GS1User.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" required="" value="${GS1UserInstance?.lastname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'firstname', 'error')} required">
	<label for="firstname">
		<g:message code="GS1User.firstname.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstname" required="" value="${GS1UserInstance?.firstname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'middleInitial', 'error')} ">
	<label for="middleInitial">
		<g:message code="GS1User.middleInitial.label" default="Middle Initial" />
		
	</label>
	<g:textField name="middleInitial" value="${GS1UserInstance?.middleInitial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="GS1User.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="company" required="" value="${GS1UserInstance?.company}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="GS1User.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="position" required="" value="${GS1UserInstance?.position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'telephoneNumber', 'error')} ">
	<label for="telephoneNumber">
		<g:message code="GS1User.telephoneNumber.label" default="Telephone Number" />
		
	</label>
	<g:textField name="telephoneNumber" value="${GS1UserInstance?.telephoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="GS1User.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${GS1UserInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: GS1UserInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="GS1User.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="role" from="${GS1UserInstance.constraints.role.inList}" required="" value="${GS1UserInstance?.role}" valueMessagePrefix="GS1User.role"/>

</div>

