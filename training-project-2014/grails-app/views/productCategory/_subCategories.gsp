<script type="text/javascript">
    var childCount = ${productCategoryInstance?.subCategories.size()} + 0;
    
    function addChild() {
        if(childCount>=5){
        	alert("Only 5 sub-categories are allowed");
            return false;
        }
        else{
        var htmlId = "subCategories" + childCount;
        var deleteIcon = "${resource(dir:'images/skin', file:'database_delete.png')}";
        var templateHtml = "<div id='" + htmlId + "' name='" + htmlId + "'>\n";
        templateHtml += "<div><span onClick='$(\"#" + htmlId + "\").remove(); childCount--'><img src='" + deleteIcon + "' />Remove Sub-category</span></div>\n";
        templateHtml += "<div class='fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'sName', 'error')} required'><label for='sName'> <g:message code='productCategory.sName.label' default='Name'/><span class='required-indicator'>*</span></label>"
        templateHtml += "<input type='text' id='subCategories[" + childCount + "].sName' name='subCategories[" + childCount + "].sName' /></div>\n";
        templateHtml += "<div class='fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'code', 'error')} required'><label for='code'> <g:message code='productCategory.code.label' default='Code'/><span class='required-indicator'>*</span></label>"
        templateHtml += "<input type='text' id='subCategories[" + childCount + "].code' name='subCategories[" + childCount + "].code' /></div>\n";
        templateHtml += "<div class='fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'description', 'error')} required'><label for='description'> <g:message code='productCategory.description.label' default='Description'/><span class='required-indicator'>*</span></label>"
        templateHtml += "<input type='text' id='subCategories[" + childCount + "].description' name='subCategories[" + childCount + "].description'/></div>\n";
        templateHtml += "</div>\n";
        $("#childList").append(templateHtml);
        childCount++;
        }
    }  
</script>

<div id="childList">
	<g:each var="subCategory" in="${productCategoryInstance.subCategories}"
		status="i">
		<g:render template='subCategory'
			model="['subCategory':subCategory,'i':i]" />
	</g:each>
</div>
<table></table>
<div class="fieldContain">
	<label><input type="button" value="Add subCategories"
		onclick="addChild();" /></label>
</div>
