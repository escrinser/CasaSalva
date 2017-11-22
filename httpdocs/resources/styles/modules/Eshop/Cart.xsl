<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="ESHOP-PAGE">

<xsl:call-template name="MODULE-CSS"/>

<xsl:choose>
<xsl:when test="count(CART-ITEM)>0">
	<xsl:call-template name="NOT-EMPTY-CART"/>
</xsl:when>
<xsl:otherwise>
	<xsl:call-template name="EMPTY-CART"/>
</xsl:otherwise>
</xsl:choose>

</xsl:template>

<xsl:template name="EMPTY-CART">
<br/>
<xsl:call-template name="BACK-TO-CATALOGUE-LINK"/>
</xsl:template>

<xsl:template name="NOT-EMPTY-CART">
<form name="cartForm" method="post">
<xsl:attribute name="action">?<xsl:value-of select="@VIEW-VARIABLE"/>=cartPage</xsl:attribute>
<input type="hidden">
	<xsl:attribute name="name"><xsl:value-of select="@ACTION-VARIABLE"/></xsl:attribute>
</input>
<input type="hidden">
	<xsl:attribute name="name"><xsl:value-of select="@VIEW-VARIABLE"/></xsl:attribute>
</input>
<input type="hidden" name="cartItemId" />

<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; margin-top: 10px;">
	<tr>
		<td width="50%" style="padding: 5px 10px;" class="mod-item-header" colspan="2"><b><xsl:value-of select="/ESHOP-PAGE/LOCALE/CART-PRODUCT-NAME"/></b></td>
		<td width="20%" align="right" style="padding: 5px 10px;" class="mod-item-header"><b><xsl:value-of select="/ESHOP-PAGE/LOCALE/CART-PRICE-PER-ITEM"/></b></td>
		<td width="10%" align="center" style="padding: 5px 10px;" class="mod-item-header"><b><xsl:value-of select="/ESHOP-PAGE/LOCALE/QUANTITY"/></b></td>
		<td width="20%" align="right" style="padding: 5px 10px;" class="mod-item-header"><b><xsl:value-of select="/ESHOP-PAGE/LOCALE/CART-PRODUCT-SUBTOTAL"/></b></td>
	</tr>
	<xsl:apply-templates select="CART-ITEM"/>
	<tr>
		<td colspan="5" style="padding: 5px 10px;" class="pageContent" align="right">
			<b><xsl:value-of select="/ESHOP-PAGE/LOCALE/TOTAL"/></b>&#160;(<xsl:value-of select="/ESHOP-PAGE/LOCALE/CART-WITHOUT-SHIPPING"/>):&#160;<b><xsl:value-of select="@TOTAL"/></b>
		</td>
	</tr>
</table>
<!--
<div align="right" style="margin: 10px 0;">
	<b><xsl:value-of select="/ESHOP-PAGE/LOCALE/TOTAL"/></b>
	&#160;<span class="pageContent">(<xsl:value-of select="/ESHOP-PAGE/LOCALE/CART-WITHOUT-SHIPPING"/>):</span>&#160;<b><xsl:value-of select="@TOTAL"/></b>
</div>-->
<div class="mod-form-hr" style="height: 1px;"><span></span></div>
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin: 10px 0;">
	<tr>
		<td>
			<xsl:call-template name="BACK-TO-CATALOGUE-LINK"/>
		</td>
		<td align="center">
			<xsl:call-template name="BUTTON">
				<xsl:with-param name="action">emptyCart</xsl:with-param>
				<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/EMPTY-CART"/></xsl:with-param>
				<xsl:with-param name="cssClass">mod-button</xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="BUTTON">
				<xsl:with-param name="action">updateCart</xsl:with-param>
				<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/UPDATE-CART"/></xsl:with-param>
				<xsl:with-param name="cssClass">mod-button</xsl:with-param>
			</xsl:call-template>
		</td>
		<td align="right">
			<xsl:call-template name="BUTTON">
				<xsl:with-param name="action">updateCart</xsl:with-param>
				<xsl:with-param name="view">orderInfoPage</xsl:with-param>
				<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/CHECKOUT"/></xsl:with-param>
				<xsl:with-param name="cssClass">mod-button-strong</xsl:with-param>
			</xsl:call-template>
		</td>
	</tr>
</table>
</form>
</xsl:template>

<xsl:template match="CART-ITEM">
<tr>
	<td style="padding: 5px 10px;" class="mod-item-body" colspan="2">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td>
					<table cellpadding="0" cellspacing="0" border="0" width="100%">
					<tr>
						<td>
							<a>
								<xsl:attribute name="href">?<xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/>=productPage&amp;product=<xsl:value-of select="@PRODUCT-ID"/></xsl:attribute>
								<xsl:value-of select="@NAME"/>
							</a>
						</td>
					</tr>
					<xsl:if test="COLOR">
					<tr>
						<td class="color_text">
							<xsl:value-of select="/ESHOP-PAGE/LOCALE/COLOR"/>:&#160;<xsl:value-of select="COLOR/@NAME"/>
						</td>
					</tr>
					</xsl:if>
					<xsl:if test="OPTIONS">
					<tr>
						<td class="color_text">
							<xsl:apply-templates select="OPTIONS"/>
						</td>
					</tr>
					</xsl:if>
					</table>
				</td>
				<td style="padding: 5px 5px;" align="right">
					<a class="mod-item-body-a" href="#">
						<xsl:attribute name="onclick">document.forms['cartForm'].<xsl:value-of select="/ESHOP-PAGE/@ACTION-VARIABLE"/>.value='deleteCartProduct';document.forms['cartForm'].<xsl:value-of select="../@VIEW-VARIABLE"/>.value='cartPage';document.forms['cartForm'].cartItemId.value = '<xsl:value-of select="@ID"/>';document.forms['cartForm'].submit();return false;</xsl:attribute>
						<xsl:value-of select="/ESHOP-PAGE/LOCALE/DELETE"/>
					</a>
				</td>
			</tr>
		</table>
	</td>
	<td align="right" style="padding: 5px 10px;" class="mod-item-body"><xsl:value-of select="@PRICE-PER-ITEM"/></td>
	<td style="padding: 5px 10px;" class="mod-item-body" align="center">
		<input type="text" class="mod-input" style="height:20px;width:50px;text-align:right;" maxlength="10">
			<xsl:attribute name="name">quantity[<xsl:value-of select="@ID"/>]</xsl:attribute>
			<xsl:attribute name="value"><xsl:value-of select="@QUANTITY"/></xsl:attribute>
		</input>
	</td>
	<td align="right" style="padding: 5px 10px;" class="mod-item-body" nowrap="true"><xsl:value-of select="@SUBTOTAL"/></td>
</tr>
</xsl:template>

<xsl:template match="OPTIONS/ITEM">
<xsl:value-of select="@NAME"/>: <xsl:value-of select="@VALUE"/>
<xsl:if test="position()!=last()">,</xsl:if>
</xsl:template>

<xsl:template name="BUTTON">
<xsl:param name="action"/>
<xsl:param name="title"/>
<xsl:param name="cssClass"/>
<xsl:param name="view"/>
<input class="{$cssClass}" style="margin-left:10px;" value="{$title}" type="submit">
	<xsl:attribute name="onclick">document.forms['cartForm'].<xsl:value-of select="@ACTION-VARIABLE"/>.value='<xsl:value-of select="$action"/>';document.forms['cartForm'].<xsl:value-of select="@VIEW-VARIABLE"/>.value='<xsl:value-of select="$view"/>';return true;</xsl:attribute>
</input>
</xsl:template>

</xsl:stylesheet>
