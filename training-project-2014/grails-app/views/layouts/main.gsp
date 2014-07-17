<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
        <!-- <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'gs1training.css')}"></link> -->
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
	
		<%--<div role="header"><h4 class="topNotes">
		Hi! {name here} | Help | Logout
		</h4></div>
		--%>
		
		<div role="header"><h4 class="topNotes">
			<sec:ifLoggedIn>
				<ul>
					<li>Hi! <sec:loggedInUserInfo field="username" /></li>
					<li>|</li>
					<li>Help</li>
					<li>|</li>
					<li>
					<form style="margin: 0; padding: 0;" name="submitForm" method="POST" action="${createLink(controller: 'logout')}">
						<input type="hidden" name="" value="">
						<a HREF="javascript:document.submitForm.submit()">Logout</a>
					</form>
					</li>
			</sec:ifLoggedIn>
		</h4></div>
		<div id="clear"></div>
		<div id="gs1Logo" role="banner">
			<a href=""><asset:image src="myGS1_logo.jpg" alt="GS1"/></a>
			<div id="bgtext">
				<div id="navbar">
					<ul>
						<li><a class="home" href="${createLink(uri: '/')}">HOME</a></li>
						<li><a href="">ABOUT</a></li>
						<li><a href="">CONTACT US</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="gs1Tag" role="tagline">
			<asset:image src="myGS1_tag.jpg" alt="GS1 Tag Line"/>
		</div>
		<div id="clear"></div>
		<div id="dashboard-wrapper">
			<div id="dashboard">
				<h1>MyGS1 Dashboard</h1>
				<ul class="menu">
					<li><span>Data Maintenance</span>
						<ul>
							<li><span>Company</span>
							<ul>
								<li><g:link action="create" controller="company">Add Company</g:link></li>
								<li><g:link action="index" controller="company">Edit Company Info</g:link></li>
								<li><g:link action="create" controller="batchPayment">Apply Batch Payment</g:link></li>
							</ul>
							</li>
							<li><span>Product</span>
							<ul>
								<li><g:link action="create" controller="product">Add Product</g:link></li>
								<li><g:link action="index" controller="product">Edit Product Info</g:link></li>
							</ul>
							</li>
							<li><span>Product Category</span>
							<ul>							
								<li><g:link action="create" controller="productCategory">Add Product Category</g:link></li>
								<li><g:link action="index" controller="productCategory">Edit Product Category</g:link></li>
							</ul>
							</li>
							<li><span>Nature of Business</span>
							<ul>							
								<li><g:link action="create" controller="natureOfBusiness">Add Nature of Business</g:link></li>
								<li><g:link action="index" controller="natureOfBusiness">Edit Nature of Business</g:link></li>
							</ul>
							</li>
							<li><span>Product Type</span>
							<ul>
								<li><g:link action="create" controller="productType">Add Product Type</g:link></li>
								<li><g:link action="index" controller="productType">Edit Product Type</g:link></li>
							</ul>
							</li>
							<li><span>UPC Member</span>
							<ul>
								<li><g:link action="create" controller="UPCMember">Add UPC Member</g:link></li>
								<li><g:link action="index" controller="UPCMember">Edit UPC Member</g:link></li>
							</ul>
							</li>
							<li>Non-Member (GLN)</li>
							<li>EAN8</li>
						</ul>
					</li>
					<li><span>User Management</span>
						<ul>
							<li>User</li>
							<li>Role</li>
							<li>GS1 Users</li>
						</ul>
					</li>
					<li><span>Articles</span>
						<ul>
							<li><g:link action="create" controller="article">Add New Article</g:link></li>
							<li><g:link action="index" controller="article">Edit Article Info</g:link></li>
						</ul>
					</li>
					<li><span>Downloads</span>
						<ul>
							<li>Add/Upload</li>
							<li>Edit</li>
							<li>Delete</li>
							<li>Download</li>
						</ul>
					</li>
					<li><span>GS1 Philippines Community Forum</span>
						<ul>
							<li><g:link action="index" controller="topic">View Forum</g:link></li>
							<li>Edit</li>
							<li>Delete</li>
							<li>Download</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo">Copyright &copy; 2014-2015. Apollo Technologies, Inc. by TEAMAWA</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
