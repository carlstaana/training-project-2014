<%@ page import="com.apollo.training.User"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Forgot Password</title>
<style>
#body_content {
	padding-top: 9em;
}
</style>
</head>
<body>
	<table>
		<tbody>
			<tr>
				<td>
					<div>
						<g:form action="changePassword" controller="GS1User"
							autocomplete='off'>
							<g:if test="${flash.error}">
								<div class="error" id="message">
									${flash.error}
								</div>
							</g:if>
							<g:if test="${flash.message}">
								<div class="message">
									${flash.message}
								</div>
							</g:if>
							<div>
								<table style="border: none">
									<tbody>
										<tr class="prop">
											<td width="320">
												<table style="border: none">
													<tbody>
														<tr>
															<td></td>
														</tr>
													</tbody>
												</table>
											</td>
											<td>
												<table>
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
											</td>
											<td width="320">
												<table style="border: none">
													<tbody>
														<tr>
															<td></td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div align="center">
								<input type="button" value="Cancel"
									onclick="location.href='index';" />
								<g:actionSubmit class="view" value="Submit"
									action="changePassword" controller="GS1User" />
							</div>
						</g:form>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>