<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="ESHOP-PAGE">
<xsl:call-template name="MODULE-CSS"/>

<script type="text/javascript">
function selectColor(id) {
	var prev_color_selected = document.getElementById("color_selected");
	if (prev_color_selected.value!="") {
		var previus_table_color = document.getElementById("table_color_"+prev_color_selected.value);
		previus_table_color.className = "mod_eshop_default_selected_color";
	}
	var table_color = document.getElementById("table_color_"+id);
	table_color.className = "mod_eshop_table_color";

	//get image attr
	var imageInfo = document.getElementById('color_image_'+id);
	var dimension = imageInfo.value.split('_');
	if (imageInfo.src!="") {
		var product_image_td = document.getElementById("product_image_td");
		product_image_td.style.display = "";

		var image 	= document.getElementById("product_image");
		image.src 	= imageInfo.src;
		image.width = dimension[0];
		image.height= dimension[1];
		image.style.display="";
		
		var origImage = document.getElementById("selectedImage");
		var origInfo = document.getElementById('color_orig_image_'+id);
		origImage.src = origInfo.src;
		origImage.value = origInfo.value;
	}

	prev_color_selected.value = id;

	buyButton = document.getElementById("buy");
	if (buyButton) buyButton.disabled = 0;

	addCartButton = document.getElementById("addToCart");
	if (addCartButton) addCartButton.disabled = 0;
}

function peviewImage() {
	var origImage = document.getElementById("selectedImage");
	var dimension = origImage.value.split('_');
	window.open(origImage.src, 'previewOrigImage'+dimension[0]+dimension[1], 'width='+dimension[0]+', height='+dimension[1]);
}

</script>
<br/>
<form name="productForm" method="post">

<input type="hidden">
	<xsl:attribute name="name"><xsl:value-of select="/ESHOP-PAGE/@ACTION-VARIABLE"/></xsl:attribute>
</input>
<input type="hidden">
	<xsl:attribute name="name"><xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/></xsl:attribute>
</input>
<input type="hidden" name="productId" />

<table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin-bottom: 10px; border-collapse: collapse; table-layout: fixed">
	<tr valign="top">
		<td id="product_image_td"  class="mod-item-body" align="center" valign="top">
			<xsl:attribute name="style">width: 120px; height: 120px; padding-top: 10px; padding-bottom: 5px; <xsl:if test="not(IMAGE)">display: none;</xsl:if></xsl:attribute>
			<input type="hidden" name="selectedImage" id="selectedImage" value="{IMAGE-ORIG/@WIDTH}_{IMAGE-ORIG/@HEIGHT}" src="{IMAGE-ORIG/@SRC}"/>
			<xsl:choose>
				<xsl:when test="IMAGE">
					<!--<a href="{IMAGE-ORIG/@SRC}" target="_blank" id="origImage">-->
					<a href="#" onclick="peviewImage();">
						<xsl:apply-templates select="IMAGE"/>
					</a>
					<!--<xsl:apply-templates select="IMAGE"/>-->
					<div style="width: 110px; height: 0px;"></div>
				</xsl:when>
				<xsl:otherwise>
					<a href="#">
						<img border="0" id="product_image" style="display:none"/>
					</a>
				</xsl:otherwise>
			</xsl:choose>
		</td>
		<td class="mod-item-body" style="height: 100%; width:100%;">
			<table cellpadding="0" cellspacing="0" border="0" width="100%" style="height: 100%;">
				<tr><td style="height: 100%; padding: 10px;" valign="top"><xsl:value-of select="DESCRIPTION" disable-output-escaping="yes"/><br/></td></tr>
				<tr>
					<td valign="top">
						<table cellpadding="0" cellspacing="0" border="0" width="100%" style="padding-left: 10px;">
						<xsl:if test="COLORS">
						<tr>
							<td valign="top" class="mod-item-body-title" nowrap="true" style="padding-right:15px;"><xsl:value-of select="/ESHOP-PAGE/LOCALE/COLOR"/>&#160;</td>
							<td  valign="top" width="100%">
								<input type="hidden" name="color_selected" id="color_selected" value=""/>
								<xsl:apply-templates select="COLORS"/>
							</td>
						</tr>
						</xsl:if>
						<xsl:apply-templates select="OPTIONS"/>
						</table>
					</td>
				</tr>
				<tr>
					<td style="padding: 10px;">
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td class="mod-item-body-title">
									<xsl:if test="@PRICE">
										<xsl:value-of select="/ESHOP-PAGE/LOCALE/PRICE"/>&#160; <b><xsl:value-of select="@PRICE"/></b>
									</xsl:if>
								</td>
								<td align="right">
									<xsl:if test="@ADVERTISE!='1'">
										<xsl:call-template name="BUTTON">
											<xsl:with-param name="id">addToCart</xsl:with-param>
											<xsl:with-param name="action">addProductToCart</xsl:with-param>
											<xsl:with-param name="actionVariable"><xsl:value-of select="@ACTION-VARIABLE"/></xsl:with-param>
											<xsl:with-param name="viewVariable"><xsl:value-of select="@VIEW-VARIABLE"/></xsl:with-param>
											<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/ADD-TO-CART"/></xsl:with-param>
											<xsl:with-param name="disabled">
												<xsl:choose><xsl:when test="COLORS">1</xsl:when><xsl:otherwise>0</xsl:otherwise></xsl:choose>
											</xsl:with-param>
										</xsl:call-template>
										<xsl:call-template name="BUTTON">
											<xsl:with-param name="id">buy</xsl:with-param>
											<xsl:with-param name="action">addProductToCart</xsl:with-param>
											<xsl:with-param name="actionVariable"><xsl:value-of select="@ACTION-VARIABLE"/></xsl:with-param>
											<xsl:with-param name="view">cartPage</xsl:with-param>
											<xsl:with-param name="viewVariable"><xsl:value-of select="@VIEW-VARIABLE"/></xsl:with-param>
											<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/BUY"/></xsl:with-param>
											<xsl:with-param name="disabled">
												<xsl:choose><xsl:when test="COLORS">1</xsl:when><xsl:otherwise>0</xsl:otherwise></xsl:choose>
											</xsl:with-param>
										</xsl:call-template>
									</xsl:if>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<xsl:if test="TOP10-PRODUCTS">
	<tr>
		<td colspan="2">
			<span class="color_text"><xsl:value-of select="/ESHOP-PAGE/LOCALE/BOUGHT-TOGETHER"/>:</span> &#160;<xsl:apply-templates select="TOP10-PRODUCTS"/>
		</td>
	</tr>
	</xsl:if>
	<xsl:apply-templates select="CATEGORIES"/>
</table>
</form>

<xsl:if test="COLORS">
<script type="text/javascript">
	selectColor('<xsl:value-of select="COLORS/@SELECTED"/>');
</script>
</xsl:if>

<xsl:call-template name="BACK-TO-CATALOGUE-LINK"/>
</xsl:template>

<xsl:template match="CATEGORIES">
	<xsl:for-each select="CATEGORY">
		<tr class="pageContent">
			<td colspan="2" style="padding-top: 5px;">
				<xsl:apply-templates select="PATH-INFO"/>
			</td>
		</tr>
	</xsl:for-each>
</xsl:template>

<xsl:template match="COLORS/ITEM">
<input type="hidden" id="color_image_{@ID}" value="{@WIDTH}_{@HEIGHT}" src="{@SRC}"/>
<input type="hidden" id="color_orig_image_{@ID}" value="{@ORIG-WIDTH}_{@ORIG-HEIGHT}" src="{@ORIG}"/>
<div style="float: left; height:10px; width:150px; margin-right: 10px; margin-top: 2px; margin-bottom: 15px; cursor: pointer;" onclick="javascript: selectColor('{@ID}');">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" id="table_color_{@ID}" class="mod_eshop_default_selected_color">
	<tr>
		<td style="background-color:{@VALUE}; height:10px; width:20px;" valign="top">
			<div style="height:10px; width:20px;"><span></span></div>
		</td>
		<td class="color_text">
			&#160;<xsl:value-of select="@NAME"/>
		</td>
	</tr>
	</table>
</div>
</xsl:template>

<xsl:template match="OPTIONS/ITEM">
<tr>
	<td valign="top" class="mod-item-body-title" style="padding-right:15px;padding-top:10px;" nowrap="true"><xsl:value-of select="@NAME"/>&#160;</td>
	<td class="mod-item-body-title" style="padding-top:10px;">
		<select name="option_{@ID}" style="width: 120px">
			<xsl:apply-templates select="OPTION"/>
		</select>
	</td>
</tr>
</xsl:template>

<xsl:template match="OPTIONS/ITEM/OPTION">
<option value="{@VALUE}"><xsl:value-of select="@VALUE"/></option>
</xsl:template>


<xsl:template match="TOP10-PRODUCTS/PRODUCT">
<a>
	<xsl:attribute name="href">?<xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/>=productPage&amp;product=<xsl:value-of select="@ID"/></xsl:attribute>
	<b><xsl:value-of select="@NAME"/></b>
</a>&#160;
</xsl:template>


<xsl:template name="BUTTON">
<xsl:param name="id"/>
<xsl:param name="actionVariable"/>
<xsl:param name="viewVariable"/>
<xsl:param name="action"/>
<xsl:param name="view"/>
<xsl:param name="title"/>
<xsl:param name="disabled">0</xsl:param>

<input id="{$id}" class="mod-form-button" style="margin-left:10px;" value="{$title}" type="submit">
	<xsl:choose>
		<xsl:when test="$disabled=1">
			<xsl:attribute name="disabled">true</xsl:attribute>
		</xsl:when>
		<xsl:otherwise>
		</xsl:otherwise>
	</xsl:choose>
	<xsl:attribute name="onclick">document.forms['productForm'].<xsl:value-of select="$actionVariable"/>.value='<xsl:value-of select="$action"/>';document.forms['productForm'].<xsl:value-of select="$viewVariable"/>.value='<xsl:value-of select="$view"/>';document.forms['productForm'].productId.value='<xsl:value-of select="@ID"/>';return true;</xsl:attribute>
</input>
</xsl:template>

<xsl:template match="IMAGE">
<img border="0" id="product_image">
	<xsl:attribute name="src"><xsl:value-of select="@SRC"/></xsl:attribute>
	<xsl:attribute name="width"><xsl:value-of select="@WIDTH"/></xsl:attribute>
	<xsl:attribute name="height"><xsl:value-of select="@HEIGHT"/></xsl:attribute>
</img>
</xsl:template>

</xsl:stylesheet>
