<%@ page import="com.apollo.training.User"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Forgot Password</title>
<style>
	.noclass tr:hover {
		background: transparent;
	}
</style>
</head>
<body>

					<div id="module">
							<h1>
			<g:message code="Change Password" />
		</h1>
		<div class="content">
						<g:form action="changePassword" controller="user"
							autocomplete='off'>
							<g:if test="${flash.error}">
								<div class="errors" id="message">
									${flash.error}
								</div>
							</g:if>
							<g:if test="${flash.message}">
								<div class="message">
									${flash.message}
								</div>
							</g:if>
							<div>

												<table class="noclass">
													<tbody>

														<tr class="prop">
															<td valign="top" class="name"><label
																for="oldPassword">Old Password:<span class="req">*</span></label></td>
															<td valign="top"
																class="value ${flash.oldPassword_error?'errors':''}">
																<g:passwordField name="oldPassword"
																	value="${params.oldPassword}" />
															</td>
														</tr>

														<tr class="prop">
															<td valign="top" class="name"><label
																for="newPassword">New Password:<span class="req">*</span></label></td>
															<td valign="top"
																class="value ${flash.newPassword_error?'errors':''}"><g:passwordField
																	name="newPassword" value="${params.newPassword}" /></td>
														</tr>

														<tr class="prop">
															<td valign="top" class="name"><label
																for="retypeNewPassword">Retype New Password:<span
																	class="req">*</span></label></td>
															<td valign="top"
																class="value ${flash.retypeNewPassword_error?'errors':''}">
																<g:passwordField name="retypeNewPassword"
																	value="${params.retypeNewPassword}" />
															</td>
														</tr>

													
													</tbody>
													</table>

							</div>
							<fieldset class="buttons">
								<input class="changepass" type="button" value="Cancel"
									onclick="location.href='index';" />
								<g:actionSubmit class="submitpass" value="Submit"
									action="changePassword" controller="GS1User" />
							</fieldset>
						</g:form>
					</div>
		</div>
</body>
</html>