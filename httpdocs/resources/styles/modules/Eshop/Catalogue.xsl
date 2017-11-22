<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="CATEGORY-LIST">
	<table cellspacing="0" cellpadding="0" border="0" style="width:100%;border-collapse:collapse;">
		<xsl:apply-templates select="ROW"/>
	</table>
</xsl:template>

<xsl:template match="ROW">
	<tr>
		<xsl:apply-templates select="CATEGORY"/>
		<xsl:apply-templates select="EMPTY-TD"/>
	</tr>
</xsl:template>

<xsl:template match="CATEGORY">
	<td valign="top">
		<xsl:attribute name="style"><xsl:if test="position()!=last()">padding-right: 10px;</xsl:if> padding-bottom: 10px;</xsl:attribute>
		<xsl:attribute name="width"><xsl:value-of select="ancestor::CATEGORY-LIST/@CATEGORY-BLOCK-WIDTH"/>%</xsl:attribute>
		<table cellpadding="0" cellspacing="0" style="border-collapse: collapse; width: 100%; height: 100%;" class="mod-category-body" onclick="window.location='?{/ESHOP-PAGE/@VIEW-VARIABLE}=productListPage&#38;category={@ID}';">
			<tr>
				<xsl:if test="IMAGE">
					<td style="width: 110px; height: 120px; padding: 5px;" align="center" valign="top">
						<xsl:apply-templates select="IMAGE"/>
						<div style="width: 110px; height: 0px;"></div>
					</td>
				</xsl:if>
				<td width="100%">
					<table cellpadding="0" cellspacing="0" style="border-collapse: collapse; width: 100%; height: 100%;" class="mod-category-body">
						<tr>
							<td class="mod-category-header" style="padding: 5px; border-top: 0px;">
								<a>
									<xsl:attribute name="href">?<xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/>=productListPage&#38;category=<xsl:value-of select="@ID"/></xsl:attribute>
									<xsl:value-of select="@NAME"/>
								</a>
								(<xsl:value-of select="@ITEMS-NUMBER"/>)
							</td>
						</tr>
						<tr>
							<td style="height: 100%; padding: 10px;" valign="top"><span><xsl:value-of select="DESCRIPTION" disable-output-escaping="yes"/><br/></span></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</td>
</xsl:template>

<xsl:template match="CATEGORY[@EMPTY=1]">
	<td>&#160;</td>
</xsl:template>

<xsl:template match="IMAGE">
	<img border="0">
		<xsl:attribute name="src"><xsl:value-of select="@SRC"/></xsl:attribute>
		<xsl:attribute name="width"><xsl:value-of select="@WIDTH"/></xsl:attribute>
		<xsl:attribute name="height"><xsl:value-of select="@HEIGHT"/></xsl:attribute>
	</img>
</xsl:template>

<xsl:template match="PRODUCT-LIST">
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr class="pageContent">
			<td><xsl:apply-templates select="../SEARCH-FORM/CATEGORY/PATH-INFO"/></td>
			<td style="text-align:right;white-space:nowrap"><a>
				<xsl:attribute name="href"><xsl:value-of select="/ESHOP-PAGE/@CATALOGUE-LINK" />?<xsl:value-of select="/ESHOP-PAGE/@ACTION-VARIABLE"/>=RssExport&amp;searchString=<xsl:value-of select="//SEARCH-FORM/@CURRENT-SEARCH-STRING"/>&amp;searchCategory=<xsl:value-of select="//SEARCH-FORM/SEARCH-FORM-ITEM[@SELECTED='1']/@ID"/></xsl:attribute>
				<img src="resources/images/modules/Eshop/rss.gif" alt="" border="0" align="absmiddle" style="margin-right:2px"/>
				RSS</a>
			</td>
		</tr>
	</table>

	<div class="mod-form-hr" style="height: 1px; margin: 10px 0;"><span></span></div>

	<form name="productForm" method="post">

	<input type="hidden">
		<xsl:attribute name="name"><xsl:value-of select="/ESHOP-PAGE/@ACTION-VARIABLE"/></xsl:attribute>
	</input>
	<input type="hidden">
		<xsl:attribute name="name"><xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/></xsl:attribute>
	</input>
	<input type="hidden" name="productId" />

	<xsl:if test="PRODUCT">
		<table cellspacing="0" cellpadding="0" border="0" style="width:100%;border-collapse:collapse;">
			<xsl:apply-templates select="PRODUCT" mode="list"/>
		</table>
	</xsl:if>
	</form>

	<xsl:apply-templates select="PAGING"/>
</xsl:template>

<xsl:template match="SEARCH-FORM">
<form name="searchForm">
<input type="hidden" value="productListPage">
	<xsl:attribute name="name"><xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/></xsl:attribute>
</input>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="mod-search">
<tr>
<td align="left">
<table cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td align="left" style="padding: 5px 0px;">
			<input name="isChanged" type="hidden" id="isChanged" value="{@IS-CHANGED}"/>
			<input name="searchString" type="text" id="searchString" class="mod-input" style="width:150px;margin:0 10px;" >
			<xsl:choose>
				<xsl:when test="@IS-CHANGED='1'">
					<xsl:attribute name="value"><xsl:value-of select="@CURRENT-SEARCH-STRING"/></xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="onclick">
						javascript: var isChanged = document.getElementById('isChanged'); if (isChanged.value==0) {var search = document.getElementById('searchString'); search.value='';isChanged.value=1;}
					</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="@SEARCH-WORD"/></xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			</input> 
			<select name="searchCategory" id="searchCategory" class="mod-input" style="margin:0 10px;">
				<xsl:apply-templates select="SEARCH-FORM-ITEM"/>
			</select>   
		</td>
		<td  align="left" style="padding: 5px 0px;">
			<a href="#">
				<xsl:attribute name="onclick">
					javascript: var isChanged = document.getElementById('isChanged'); if (isChanged.value==0) {var search = document.getElementById('searchString'); search.value='';} document.searchForm.submit();
				</xsl:attribute>
				<img border="0">
					<xsl:attribute name="src"><xsl:value-of select="$img_url"/>btn_search_bg.gif</xsl:attribute>
				</img>
			</a>
		</td>
	</tr>
</table>
</td>
</tr>
</table>
</form>
</xsl:template>

<xsl:template match="SEARCH-FORM-ITEM">
	<option>
		<xsl:attribute name="value"><xsl:value-of select="@ID"/></xsl:attribute>
		<xsl:if test="@SELECTED=1">
			<xsl:attribute name="selected">true</xsl:attribute>
		</xsl:if>
		<xsl:if test="@LEVEL">
			<xsl:attribute name="style">white-space:pre;</xsl:attribute><xsl:call-template name="LOOP-STRING">
				<xsl:with-param name="string">&#160;</xsl:with-param>
				<xsl:with-param name="level" select="3*@LEVEL"/>
			</xsl:call-template></xsl:if><xsl:value-of select="@TITLE"/></option>
</xsl:template>

<xsl:template match="PRODUCT" mode="list">
<tr>
	<td>
		<table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin-bottom: 10px; border-collapse: collapse;">
		<tr valign="top">
			<xsl:if test="IMAGE">
				<td style="width: 110px; height: 120px; padding: 5px;" class="mod-item-body" align="center" valign="top">
					<a href="#">
						<xsl:attribute name="onclick">
							window.open('<xsl:value-of select="IMAGE-ORIG/@SRC"/>', 'imagepreview', 'width=<xsl:value-of select="IMAGE-ORIG/@WIDTH+5"/>, height=<xsl:value-of select="IMAGE-ORIG/@HEIGHT+5"/>, resizable=yes, tolbar=no, status=yes, scrollbars=yes');return false;
						</xsl:attribute>
						<xsl:apply-templates select="IMAGE"/>
					</a>
					<div style="width: 110px; height: 0px;"></div>
				</td>
			</xsl:if>
			<td class="mod-item-body" style="height: 100%;">
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="mod-item-body-title"  style="padding: 5px;">
						<a>
							<xsl:attribute name="href">?<xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/>=productPage&#38;product=<xsl:value-of select="@ID"/>&#38;category=<xsl:value-of select="../../SEARCH-FORM/CATEGORY/@ID"/></xsl:attribute>
							<b><xsl:value-of select="@NAME"/></b>
						</a>
					</td>
				</tr>
				<tr>
					<td style="height: 100%; padding: 5px;" valign="top">
						<xsl:value-of select="DESCRIPTION" disable-output-escaping="yes"/>
					</td>
				</tr>
				<tr>
					<td valign="top">
						<table cellpadding="0" cellspacing="0" border="0" width="100%" style="padding-left: 5px">
						<xsl:if test="COLORS">
						<tr>
							<td valign="top" class="mod-item-body-title" style="width:50px"><xsl:value-of select="/ESHOP-PAGE/LOCALE/COLOR"/>&#160;</td>
							<td>
								<xsl:apply-templates select="COLORS"/>
							</td>
						</tr>
						</xsl:if>
						<xsl:apply-templates select="OPTIONS"/>
						</table>
					</td>
				</tr>
				<tr>
					<td style="padding: 5px;">
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
						<tr>
							<td class="mod-item-body-title">
								<xsl:if test="@PRICE">
									<xsl:value-of select="/ESHOP-PAGE/LOCALE/PRICE"/>&#160; <b><xsl:value-of select="@PRICE"/></b>
								</xsl:if>
							</td>
							<td align="right">
								<xsl:choose>
									<xsl:when test="COLORS or OPTIONS">
										<xsl:if test="@ADVERTISE!='1'">
											<input type="button" value="{/ESHOP-PAGE/LOCALE/SELECT-AND-BUY}">
												<xsl:attribute name="onclick">javascript: window.location.href="?view=productPage&amp;product="+<xsl:value-of select="@ID"/>;</xsl:attribute>
											</input>
										</xsl:if>
									</xsl:when>
									<xsl:otherwise>
										<xsl:if test="@ADVERTISE!='1'">
											<xsl:call-template name="BUTTON">
												<xsl:with-param name="action">addProductToCart</xsl:with-param>
												<xsl:with-param name="actionVariable"><xsl:value-of select="/ESHOP-PAGE/@ACTION-VARIABLE"/></xsl:with-param>
												<xsl:with-param name="viewVariable"><xsl:value-of select="ancestor::*/@VIEW-VARIABLE"/></xsl:with-param>
												<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/ADD-TO-CART"/></xsl:with-param>
											</xsl:call-template>
											<xsl:call-template name="BUTTON">
												<xsl:with-param name="action">addProductToCart</xsl:with-param>
												<xsl:with-param name="actionVariable"><xsl:value-of select="/ESHOP-PAGE/@ACTION-VARIABLE"/></xsl:with-param>
												<xsl:with-param name="view">cartPage</xsl:with-param>
												<xsl:with-param name="viewVariable"><xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/></xsl:with-param>
												<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/BUY"/></xsl:with-param>
											</xsl:call-template>
										</xsl:if>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
						</table>
					</td>
				</tr>
				</table>
			</td>
		</tr>
		</table>
	</td>
</tr>
</xsl:template>


<xsl:template match="PRODUCT/COLORS/ITEM">
<div style="float: left; height:10px; width:15px; margin-right: 10px; margin-top: 3px; margin-bottom: 3px;">
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td style="background-color:{@VALUE}; height:10px; width:15px;">
			<span></span>
		</td>
	</tr>
	</table>
</div>
</xsl:template>

<xsl:template match="PRODUCT/OPTIONS/ITEM">
<tr>
	<td valign="top" class="mod-item-body-title" nowrap="true" style="padding-right: 20px;"><xsl:value-of select="@NAME"/>&#160;</td>
	<td class="mod-item-body-title"><xsl:value-of select="@FORMAT-STR"/></td>
</tr>
</xsl:template>

<xsl:template name="BUTTON">
<xsl:param name="actionVariable"/>
<xsl:param name="viewVariable"/>
<xsl:param name="action"/>
<xsl:param name="view"/>
<xsl:param name="title"/>
<input class="mod-form-button" style="margin-left:10px;" value="{$title}" type="submit">
	<xsl:attribute name="onclick">document.forms['productForm'].<xsl:value-of select="$actionVariable"/>.value='<xsl:value-of select="$action"/>';document.forms['productForm'].<xsl:value-of select="$viewVariable"/>.value='<xsl:value-of select="$view"/>';document.forms['productForm'].productId.value='<xsl:value-of select="@ID"/>';return true;</xsl:attribute>
</input>
</xsl:template>

</xsl:stylesheet>