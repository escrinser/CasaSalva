<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="SEARCH-FORM">
<form method="POST" name="searchForm">

<xsl:apply-templates select="INPUT[TYPE='HIDDEN']"/>

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="mod-search">
<tr>
	<td align="left" style=" padding: 5px 10px;">
		<input type="text" class="mod-input" style="width:205px;margin:0 10px;">
			<xsl:attribute name="id"><xsl:value-of select="SEARCH-WORD/ID"/></xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="SEARCH-WORD/NAME"/></xsl:attribute>
			<xsl:attribute name="value"><xsl:value-of select="SEARCH-WORD/VALUE"/></xsl:attribute>
		</input>
		&#160;
		
		<xsl:apply-templates select="INPUT[TYPE='SELECT']"/>
		
		<input type="submit" name="search" class="mod-search-button" >
			<xsl:attribute name="value"><xsl:value-of select="@SUBMIT"/></xsl:attribute>
		</input>
	</td>
</tr>
</table>
</form>
</xsl:template>

<xsl:template match="FORM[@FormMode='WithoutTags']">
	<xsl:call-template name="FormIntro"/>
</xsl:template>

<xsl:template match="FORM">
	<form enctype="multipart/form-data">
		<xsl:attribute name="onsubmit"><xsl:value-of select="ONSUBMIT"/></xsl:attribute>
		<xsl:apply-templates select="METHOD|ACTION|NAME|TARGET|ID"/>
		<xsl:call-template name="FormIntro"/>
	</form>
</xsl:template>

<xsl:template name="FormIntro">
	<xsl:apply-templates select="INPUT[TYPE='HIDDEN']"/>
	<xsl:call-template name="MODULE-FORM">
		<xsl:with-param name="module_form_inputs" select="INPUT[TYPE!='HIDDEN']"/>
		<xsl:with-param name="module_form_buttons" select="BUTTON"/>
	</xsl:call-template>
</xsl:template>

<xsl:template match="FORM/METHOD|FORM/ACTION|FORM/NAME|FORM/TARGET|FORM/ID">
	<xsl:attribute name = "{name()}">
		<xsl:value-of select = "." />
	</xsl:attribute>
</xsl:template>

<!--Do not edit MODULE-FORM-INPUT template. It is used for site templates!!! -->
<xsl:template name="MODULE-FORM-INPUT">
	<xsl:param name="module_form_input"/>
	<xsl:if test="TYPE!='HIDDEN'">
		<xsl:call-template name="MODULE-FORM-INPUT-LAYOUT">
			<xsl:with-param name="module_form_title" select="TITLE"/>
			<xsl:with-param name="module_form_input_element" select="$module_form_input"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>
<!--Do not edit MODULE-FORM-INPUT template. It is used for site templates!!! -->

<xsl:template match="INPUT[TYPE='HIDDEN']">
	<input><xsl:call-template name="INPUT-ATTRIBUTE"/></input>
</xsl:template>

<xsl:template match="INPUT/TITLE">
		<xsl:call-template name="MODULE-FORM-INPUT-TITLE">
			<xsl:with-param name="module_form_input_title" select="."/>
			<xsl:with-param name="module_form_input_required" select="../REQUIRED"/>
		</xsl:call-template>
</xsl:template>

<xsl:template match="INPUT/REQUIRED">
	<xsl:call-template name="MODULE-FORM-INPUT-REQUIRED">
		<xsl:with-param name="module_form_input_required_symbol">*</xsl:with-param>
	</xsl:call-template>
</xsl:template>

<xsl:template match="INPUT[TYPE='TEXT' or TYPE='PASSWORD']">
	<input>
		<xsl:call-template name="INPUT-ATTRIBUTE"/>
		<xsl:call-template name="MODULE-FORM-INPUT-DECORATION"/>
	</input>
</xsl:template>

<xsl:template match="INPUT[TYPE='TEXTAREA']" >
	<textarea>
		<xsl:call-template name="INPUT-ATTRIBUTE"/>
		<xsl:call-template name="MODULE-FORM-INPUT-DECORATION"/>
		<xsl:value-of select = "VALUE" />
	</textarea>
</xsl:template>

<xsl:template match="INPUT[TYPE='SELECT']" >
	<select>
		<xsl:call-template name="INPUT-ATTRIBUTE"/>
		<xsl:call-template name="MODULE-FORM-INPUT-DECORATION"/>
		<xsl:apply-templates select = "ITEM"/>
	</select>
</xsl:template>

<xsl:template match="INPUT[TYPE='SELECT']/ITEM" >
	<option value="{VALUE}">
		<xsl:apply-templates select="@SELECTED"/>
		<xsl:value-of select="TITLE"/>
	</option>
</xsl:template>

<xsl:template match="INPUT[TYPE='SELECT']/ITEM/@SELECTED" >
	<xsl:attribute name="selected">true</xsl:attribute>
</xsl:template>

<xsl:template name="INPUT-ATTRIBUTE">
	<xsl:attribute name="TYPE">
		<xsl:value-of select="TYPE"/>
	</xsl:attribute>
	<xsl:apply-templates select="NAME|VALUE|ONCHANGE|ID"/>
</xsl:template>

<xsl:template match="INPUT/NAME|INPUT/TYPE|INPUT/VALUE|INPUT/ONCHANGE|INPUT/ID">
	<xsl:attribute name = "{name()}"><xsl:value-of select = "."/></xsl:attribute>
</xsl:template>

<xsl:template match="BUTTON">
	<xsl:call-template name="MODULE-FORM-BUTTON">
		<xsl:with-param name="module_form_button_title" select="TITLE"/>
		<xsl:with-param name="module_form_button_name" select="NAME"/>
		<xsl:with-param name="module_form_button_type" select="TYPE"/>
		<xsl:with-param name="module_form_button_actions" select="ONCLICK"/>
	</xsl:call-template>
</xsl:template>

<!--Do not edit MODULE-FORM-BUTTON-ACTIONS template. It is used for site templates!!! -->
<xsl:template name="MODULE-FORM-BUTTON-ACTIONS">
	<xsl:param name="module_form_button_additional_actions"/>
	<xsl:param name="module_form_button_native_actions"/>
	<xsl:if test="$module_form_button_additional_actions != '' or $module_form_button_native_actions != ''">
		<xsl:attribute name = "onclick">
			<xsl:value-of select="$module_form_button_additional_actions" disable-output-escaping="yes"/>
			<xsl:value-of select="$module_form_button_native_actions" disable-output-escaping="yes"/>
		</xsl:attribute>
	</xsl:if>
</xsl:template>
<!--Do not edit MODULE-FORM-BUTTON-ACTIONS template. It is used for site templates!!! -->

</xsl:stylesheet>