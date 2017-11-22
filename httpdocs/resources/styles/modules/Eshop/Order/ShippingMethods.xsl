<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="SHIPPING-METHOD-FORM">
<table border="0" cellpadding="0" cellspacing="0" width="100%" >
<tr>
	<td class="mod-form" style="border-width: 0px;">
		<b><span class="mod-form-title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/SHIPPING-METHOD"/></span></b>
		<div style="height: 10px;"><span></span></div>
		<div class="mod-form-hr" style="height: 1px;"><span></span></div>
		<div style="height: 10px;"><span></span></div>
		<span class="mod-form-title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/SELECT-SHIPPING-METHOD"/></span>
	</td>
</tr>
<tr>
	<td class="mod-form" style="border-width: 0px; vertical-align: top;">
		<table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
			<xsl:apply-templates select="SHIPPING-METHOD-LIST/ROW"/>
		</table>
	</td>
</tr>
</table>
</xsl:template>

<xsl:template match="SHIPPING-METHOD-LIST/ROW">
<tr>
	
	<xsl:apply-templates select="ITEM"/>
</tr>	
</xsl:template>

<xsl:template match="SHIPPING-METHOD-LIST/ROW/ITEM">
<td style="padding-bottom:10px; padding-bottom:10px;" valign="top" width="20">
	<input type="radio" name="shipping_method" value="{@VALUE}">
		<xsl:if test="@CHECKED='1'">
			<xsl:attribute name="checked">true</xsl:attribute>
		</xsl:if>
	</input>
</td>
<td style="padding-bottom:10px; padding-top:2px; padding-right:10px; width:50%;"  valign="top">
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td class="mod-form-title" nowrap="true"><xsl:value-of select="@NAME"/></td>
	</tr>
	<xsl:if test="@DESCRIPTION!=''">
	<tr>
		<td class="mod-form-title"><xsl:value-of select="@DESCRIPTION" disable-output-escaping="yes"/><br/></td>
	</tr>
	</xsl:if>
	<tr>
		<td valign="bottom" nowrap="true" class="mod-form-title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/PRICE"/>&#160; <b><xsl:value-of select="@FORMATED-COST"/></b></td>
	</tr>
	</table>
</td>
</xsl:template>

<xsl:template match="SHIPPING-METHOD-LIST/ROW/ITEM[@EMPTY=1]">
	<td>&#160;</td>
</xsl:template>

</xsl:stylesheet>