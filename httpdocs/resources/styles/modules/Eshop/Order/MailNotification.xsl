<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="NOTIFICATION">
<style type="text/css">
*.mod-item-header
{
	border: 1px solid #969696;
	background-color: #E5E5E5;
	color: #000000;
	font-family: Arial, sans-serif;
	font-size: 11px;
}
*.mod-item-body
{
	border: 1px solid #969696;
	background-color: #ffffff;
	color: #000000;
	font-family: Arial, sans-serif;
	font-size: 8pt;
}
*.color_text {
	font-family: Arial, sans-serif;
	font-size: 11px;
}
*.mod-item-footer
{
	border: 1px solid #969696;
	background-color: #F3F3F3;
	color: #000000;
	font-family: Arial, sans-serif;
	font-size: 8pt;
}
</style>

<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse;">
<tr>
	<td><xsl:apply-templates select="CART-SUMMARY"/></td>
</tr>
</table>
<br/>
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse;">
<tr>
	<td valign="top" style="padding-right:20px"><xsl:apply-templates select="CONTACT-INFORMATION-SUMMARY"/></td>
	<td valign="top" style="height:100%"><xsl:apply-templates select="PAYMENT-SYSTEM-SUMMARY"/></td>
</tr>
</table>
</xsl:template>

<xsl:template match="CART-SUMMARY">
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; margin-top: 10px;">
<tr>
	<td width="50%" style="padding: 5px 10px;" class="mod-item-header"><xsl:value-of select="/NOTIFICATION/LOCALE/CART-PRODUCT-NAME"/></td>
	<td width="20%" align="right" style="padding: 5px 10px;" class="mod-item-header"><xsl:value-of select="/NOTIFICATION/LOCALE/CART-PRICE-PER-ITEM"/></td>
	<td width="10%" align="center" style="padding: 5px 10px;" class="mod-item-header"><xsl:value-of select="/NOTIFICATION/LOCALE/QUANTITY"/></td>
	<td width="20%" align="right" style="padding: 5px 10px;" class="mod-item-header"><xsl:value-of select="/NOTIFICATION/LOCALE/CART-PRODUCT-SUBTOTAL"/></td>
</tr>
<xsl:apply-templates select="CART-ITEM" mode="summary"/>
<xsl:if test="SHIPPING-METHOD">
<tr>
	<td colspan="3" style="padding: 5px 10px;" class="mod-item-header"><xsl:value-of select="SHIPPING-METHOD/@NAME"/></td>
	<td align="right" class="mod-item-header" style="padding: 5px 10px;"><xsl:value-of select="SHIPPING-METHOD/@COST"/></td>
</tr>
</xsl:if>
<tr>
	<td colspan="4" style="padding: 5px 10px;" class="mod-item-footer" align="right">
		<b><xsl:value-of select="/NOTIFICATION/LOCALE/TOTAL"/>:</b>&#160;<xsl:value-of select="@TOTAL"/>
	</td>
</tr>
</table>
</xsl:template>

<xsl:template match="CART-ITEM" mode="summary">
<tr>
	<td style="padding: 5px 10px;" class="mod-item-body">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td><xsl:value-of select="@NAME"/></td>
		</tr>
		<xsl:if test="COLOR">
		<tr>
			<td class="color_text">
				<xsl:value-of select="/NOTIFICATION/LOCALE/COLOR"/>: <xsl:value-of select="COLOR/@NAME"/>
			</td>
		</tr>
		</xsl:if>
		<xsl:if test="OPTIONS">
		<tr>
			<td class="color_text"><xsl:apply-templates select="OPTIONS"/></td>
		</tr>		
		</xsl:if>
		</table>
	</td>
	<td align="right" style="padding: 5px 10px;" class="mod-item-body"><xsl:value-of select="@PRICE-PER-ITEM"/></td>
	<td align="center" style="padding: 5px 10px;" class="mod-item-body"><xsl:value-of select="@QUANTITY"/></td>
	<td align="right" style="padding: 5px 10px;" class="mod-item-body" nowrap="true"><xsl:value-of select="@SUBTOTAL"/></td>
</tr>
</xsl:template>

<xsl:template match="OPTIONS/ITEM">
<xsl:value-of select="@NAME"/>: <xsl:value-of select="@VALUE"/>
<xsl:if test="position()!=last()">,</xsl:if>
</xsl:template>

<xsl:template match="CONTACT-INFORMATION-SUMMARY">
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; height: 100%;">
	<tr>
		<td style="padding: 5px 10px; height: 25px;" class="mod-item-header">
			<b><xsl:value-of select="/NOTIFICATION/LOCALE/CONTACT-INFORMATION"/></b>
		</td>
	</tr>
	<tr>
		<td style="padding: 5px 10px;" class="mod-item-body">
			<xsl:value-of select="DATA/@FIRST-NAME"/>&#160;<xsl:value-of select="DATA/@LAST-NAME"/>
			<br />
			<xsl:value-of select="DATA/@EMAIL"/>
			<br />
			<xsl:value-of select="DATA/@ADDRESS1"/>&#160;<xsl:value-of select="DATA/@ADDRESS2"/>
			<br />
			<xsl:value-of select="DATA/@CITY"/>&#160;<xsl:value-of select="DATA/@STATE"/>
			<br />
			<xsl:value-of select="DATA/@COUNTRY"/>&#160;<xsl:value-of select="DATA/@ZIP"/>
		</td>
	</tr>
</table>
</xsl:template>

<xsl:template match="PAYMENT-SYSTEM-SUMMARY">
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; height: 100%;">
	<tr>
		<td style="padding: 5px 10px; height: 25px;" class="mod-item-header">
			<b><xsl:value-of select="/NOTIFICATION/LOCALE/PAYMENT-INFORMATION"/></b>
		</td>
	</tr>
	<tr>
		<td style="padding: 5px 10px;" class="mod-item-body" valign="top">
			<xsl:value-of select="/NOTIFICATION/LOCALE/PAYMENT-METHOD"/>: <xsl:value-of select="@NAME"/>
		</td>
	</tr>
</table>
</xsl:template>

</xsl:stylesheet>