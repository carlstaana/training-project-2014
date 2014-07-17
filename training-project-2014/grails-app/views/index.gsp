<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style>
			.homeviewtable {
				margin-top: 1em;
			}
			.homeviewtable tr:hover {
				background: transparent;
			}
			.homeviewul {
			    width: 30%;
			    display: inline-table;
			    table-layout: fixed; /* optional, for equal spacing */
			    border-collapse: collapse;
			    border: solid blue 1px;
			    list-style-type: none;
			    height: 300px;
			    margin-right: 1em;
			    vertical-align: top;
			}
			.homeviewli {
			    display: table-cell;
			    border: 1px solid #07134f;
			    padding: 1em 2em;
			}
			.homeviewli li {
				font-size: 11pt;
				padding-left: 1em;
			}
			ul {
				list-style-type: none;
			}
			a {
				text-decoration: none;
			}
			a:hover {
				text-decoration: underline;
			}
		</style>
	</head>
	<body>
		<div id="module">
			<table class="homeviewtable">
				<tr>
					<td>
						<ul class="homeviewul">
							<li class="homeviewli"><h1>Data Maintenance</h1>
								<ul>
									<li><g:link action="index" controller="company">Company Info</g:link></li>
									<li><g:link action="index" controller="product">Product Info</g:link></li>
									<li><g:link action="index" controller="productCategory">Product Category</g:link></li>
									<li><g:link action="index" controller="natureOfBusiness">Nature of Business</g:link></li>
									<li><g:link action="index" controller="productType">Product Type</g:link></li>
									<li><g:link action="index" controller="UPCMember">UPC Members</g:link></li>
									<li>Non-Member (GLN)</li>
									<li>EAN8</li>
								</ul>
							</li>
						</ul>
						<ul class="homeviewul">
							<li class="homeviewli"><h1>User Management</h1>
								<ul>
									<li>User</li>
									<li>Role</li>
									<li>GS1 Users</li>
								</ul>
						</ul>
						<ul class="homeviewul">
							<li class="homeviewli"><h1>Notification</h1>
								<ul>
									<li>Approved Products</li>
									<li>Cancelled Products</li>
								</ul>
						</ul>
					</td>
				</tr>
				<tr>
					<td>
						<ul class="homeviewul">
							<li class="homeviewli"><h1>Articles</h1>
								<ul>
									<li><g:link action="create" controller="article">Add New Article</g:link></li>
									<li><g:link action="index" controller="article">Edit Article Info</g:link></li>
								</ul>
						</ul>
						<ul class="homeviewul">
							<li class="homeviewli"><h1>Downloads</h1>
								<ul>
									<li>Add/Upload</li>
									<li>Edit</li>
									<li>Delete</li>
									<li>Download</li>
								</ul>
						</ul>
						<ul class="homeviewul">
							<li class="homeviewli"><h1>GS1 Philippines Community Forum</h1>
								<ul>
									<li><g:link action="index" controller="topic">View Forum</g:link></li>
									<li>Edit</li>
									<li>Delete</li>
									<li>Download</li>
								</ul>
							</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>
