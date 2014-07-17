<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="layout" content="main" />
  <title>Forgot Password</title>
  <style>
            #body_content {
                padding-top:9em;
            }
        </style>
</head>
<body>
	<table>
		<tbody>
			<tr>
				<td>
					<div>
						<g:form action="sendEmail" controller="login" autocomplete='off'>
							<g:if test="${flash.error}">
                    			<div class="error" id="message">${flash.error}</div>
                			</g:if>
                			<g:if test="${flash.message}">
			                	<div class="message">${flash.message}</div>
			                </g:if>
							 <div>
			                    <table  style="border: none">
			                        <tbody>
			                            <tr class="prop">
			                                <td width="320">
				                                <table style="border: none">
							                        <tbody>
							                            <tr>
							                                <td>
							                                </td>
							                            </tr>
							                        </tbody>
							                    </table>
			                                </td>
			                                <td>
			                                	<table>
							                        <tbody>
							                            <tr class="prop">
							                                <td valign="top" class="name">
							                                    <label for="emailAddress">Email Address:<span class="req">*</span></label>
							                                </td>
							                                <td valign="top" class="value ${flash.email_error?'errors':''}">
							                                    <g:textField name="emailAddress" value="${params.emailAddress}" />
							                                </td>
							                            </tr>
							
							                            <tr class="prop">
							                                <td valign="top" class="name">
							                                    <label for="username">Username:<span class="req">*</span></label>
							                                </td>
							                                <td valign="top" class="value ${flash.username_error?'errors':''}">
							                                    <g:textField name="username" value="${params.username}" />
							                                </td>
							                            </tr>
							                        
							                        </tbody>
							                    </table>
			                                </td>
			                                <td width="320">
			                                	<table style="border: none">
							                        <tbody>
							                            <tr>
							                                <td>
							                                </td>
							                            </tr>
							                        </tbody>
							                    </table>
			                                </td>
			                            </tr>
			                        </tbody>
			                    </table>
			                </div>
	           				<div align="center">
								<input type="button" value="Cancel" onclick="location.href='auth';"/>
		           				<g:actionSubmit class ="view" value="Submit" action="sendEmail" controller="login" />           				
	           				</div>
	         			</g:form>
         			</div>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>