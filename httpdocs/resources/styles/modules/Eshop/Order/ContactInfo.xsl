<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="CONTACT-INFORMATION-FORM">
<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td width="50%">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td colspan="2"  class="mod-form" style="border-width: 0px;">
				<b><span class="mod-form-title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/CONTACT-INFORMATION"/></span></b>
				<div style="height: 10px;"><span></span></div>
				<div class="mod-form-hr" style="height: 1px;"><span></span></div>
				<div style="height: 10px;"><span></span></div>
				<xsl:value-of select="/ESHOP-PAGE/LOCALE/ENTER-CONTACT-INFORMATION"/>
			</td>
		</tr>
		</table>
	</td>
	<td width="50%">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td colspan="2"  class="mod-form" style="border-width: 0px;">
				<b><span class="mod-form-title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/DELIVERY-INFORMATION"/></span></b>
				<div style="height: 10px;"><span></span></div>
				<div class="mod-form-hr" style="height: 1px;"><span></span></div>
				<div style="height: 10px;"><span></span></div>
				<xsl:value-of select="/ESHOP-PAGE/LOCALE/ENTER-DELIVERY-INFORMATION"/>
			</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/FIRST-NAME"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[firstName]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@FIRST-NAME"/></xsl:with-param>
			<xsl:with-param name="required">true</xsl:with-param>
		</xsl:call-template>
	</td>
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/ADDRESS1"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[address1]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@ADDRESS1"/></xsl:with-param>
			<xsl:with-param name="required">true</xsl:with-param>
		</xsl:call-template>
	</td>
</tr>
<tr>
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/LAST-NAME"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[lastName]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@LAST-NAME"/></xsl:with-param>
			<xsl:with-param name="required">true</xsl:with-param>
		</xsl:call-template>
	</td>
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/ADDRESS2"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[address2]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@ADDRESS2"/></xsl:with-param>
		</xsl:call-template>
	</td>
</tr>
<tr>
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/COMPANY"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[company]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@COMPANY"/></xsl:with-param>
		</xsl:call-template>
	</td>
	<td >
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td width="35%" class="mod-form-title">
				<xsl:value-of select="/ESHOP-PAGE/LOCALE/COUNTRY"/>
			</td>
			<td width="65%">
				<xsl:apply-templates select="INPUT"/>
			</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/PHONE-NUMBER"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[phoneNumber]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@PHONE-NUMBER"/></xsl:with-param>
			<!--<xsl:with-param name="required">true</xsl:with-param>-->
		</xsl:call-template>
	</td>
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/CITY"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[city]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@CITY"/></xsl:with-param>
			<xsl:with-param name="required">true</xsl:with-param>
		</xsl:call-template>
	</td>
</tr>
<tr>
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/EMAIL"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[email]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@EMAIL"/></xsl:with-param>
			<xsl:with-param name="required">true</xsl:with-param>
		</xsl:call-template>
	</td>	
	<td>
		<xsl:call-template name="FORM-FIELD">
			<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/STATE"/></xsl:with-param>
			<xsl:with-param name="name">contactInfo[state]</xsl:with-param>
			<xsl:with-param name="value"><xsl:value-of select="DATA/@STATE"/></xsl:with-param>
		</xsl:call-template>
	</td>
</tr>
<tr>
<td></td>
<td>
<xsl:call-template name="FORM-FIELD">
	<xsl:with-param name="title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/ZIP"/></xsl:with-param>
	<xsl:with-param name="name">contactInfo[zip]</xsl:with-param>
	<xsl:with-param name="value"><xsl:value-of select="DATA/@ZIP"/></xsl:with-param>
	<!--<xsl:with-param name="required">true</xsl:with-param>-->
</xsl:call-template>
</td>
</tr>
</table>
</xsl:template>

<xsl:template name="FORM-FIELD">
<xsl:param name="title"/>
<xsl:param name="name"/>
<xsl:param name="value"/>
<xsl:param name="required" select="false"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
	<tr>
		<td width="35%" class="mod-form-title">
			<xsl:value-of select="$title"/>
		  	<xsl:if test="$required='true'">&#160;<span class="requiered"><xsl:attribute name="id"><xsl:value-of select="$name"/>_asterix</xsl:attribute>*</span></xsl:if>
		 </td>
		<td width="65%">
			<input class="mod-input" style="width:100%;" maxlength="255" >
				<xsl:attribute name="id"><xsl:value-of select="$name"/></xsl:attribute>
				<xsl:attribute name="name"><xsl:value-of select="$name"/></xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="$value"/></xsl:attribute>
			</input>
		</td>
	</tr>
</table>
</xsl:template>

<xsl:template match="CONTACT-INFORMATION-SUMMARY">
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; height: 100%;">
	<tr>
		<td style="padding: 5px 10px; height: 25px;" class="mod-item-header">
			<b><xsl:value-of select="/ESHOP-PAGE/LOCALE/CONTACT-INFORMATION"/></b>
		</td>
	</tr>
	<tr>
		<td style="padding: 5px 10px;" class="mod-item-body">
			<xsl:value-of select="DATA/@FIRST-NAME"/>&#160;<xsl:value-of select="DATA/@LAST-NAME"/><br/>
			<xsl:if test="DATA/@COMPANY!=''">
				<xsl:value-of select="DATA/@COMPANY"/><br/>
			</xsl:if>
			<xsl:if test="DATA/@PHONE-NUMBER!=''">
				<xsl:value-of select="DATA/@PHONE-NUMBER"/><br/>
			</xsl:if>
			<xsl:value-of select="DATA/@EMAIL"/><br/>
			<xsl:if test="DATA/@COUNTRY!=''">
				<xsl:value-of select="DATA/@COUNTRY"/><br/>
			</xsl:if>
			<xsl:if test="DATA/@CITY!='' or DATA/@STATE!=''">
				<xsl:value-of select="DATA/@CITY"/>&#160;<xsl:value-of select="DATA/@STATE"/><br/>
			</xsl:if>
			<xsl:value-of select="DATA/@ADDRESS1"/>&#160;<xsl:value-of select="DATA/@ADDRESS2"/><br/>
			<xsl:value-of select="DATA/@ZIP"/>
		</td>
	</tr>
	<tr>
		<td style="padding: 5px 10px; height: 25px;" class="mod-item-footer">
			<a class="mod-info-footer-a">
				<xsl:attribute name="href">?<xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/>=orderInfoPage</xsl:attribute>
				<xsl:value-of select="/ESHOP-PAGE/LOCALE/EDIT-DELIVERY-INFORMATION"/>
			</a>
		</td>
	</tr>
</table>
</xsl:template>

<xsl:template match="INPUT[TYPE='SELECT']" >
	<select style="width: 150px" class="mod-input">
		<xsl:call-template name="INPUT-ATTRIBUTE"/>
		<xsl:call-template name="MODULE-FORM-INPUT-DECORATION"/>
		<xsl:apply-templates select = "ITEM"/>
	</select>
</xsl:template>

<xsl:template match="INPUT[TYPE='SELECT']/ITEM" >
	<option value="{VALUE}">
		<xsl:if test="SELECTED/@VALUE='1'">
			<xsl:attribute name="selected">true</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="TITLE"/>
	</option>
</xsl:template>

</xsl:stylesheet>