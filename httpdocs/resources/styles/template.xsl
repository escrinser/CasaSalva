<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- ###### Check it -->
<xsl:param name="img_url" select="''"/>
<!-- ###### Check it -->
<xsl:param name="css_url" select="''"/>
<xsl:param name="modules_http_dir" select="''"/>

<xsl:template name="MODULE-LAYOUT">
	<xsl:param name="module_content"/>
	<xsl:param name="module_status"/>
	<xsl:param name="module_additional_block"/>
	<xsl:param name="module_menu"/>
	<xsl:param name="module_secondary_menu"/>

	<xsl:apply-templates select="$module_status"/>
	<table id="100" cellpadding="0" cellspacing="0" border="0" align="center" class="module_content_block_table">
		<xsl:for-each select="$module_content">
			<tr>
				<td class="module_content_block">
					<xsl:apply-templates select="current()"/>
				</td>
			</tr>
		</xsl:for-each>
	</table>
<!--$module_additional_block, $module_navigation are empty in example -->
	<xsl:apply-templates select="$module_additional_block"/>
	<xsl:apply-templates select="$module_menu"/>
	<xsl:apply-templates select="$module_secondary_menu"/>
</xsl:template>

<xsl:template name="MODULE-FORM">
	<xsl:param name="module_form_title"/>
	<xsl:param name="module_form_description"/>
	<xsl:param name="module_form_inputs"/>
	<xsl:param name="module_form_buttons"/>

<!--$module_form_title is empty in example -->
	<xsl:apply-templates select="module_form_title"/>
	<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" class="module_form_table">
		<xsl:for-each select="$module_form_inputs">
			<xsl:call-template name="MODULE-FORM-INPUT">
				<xsl:with-param name="module_form_input" select="current()"/>
			</xsl:call-template>
		</xsl:for-each>
		<tr>
			<td height="20" colspan="2" align="center" class="module_form_buttons">
				<xsl:for-each select="$module_form_buttons">
					<xsl:apply-templates select="current()"/>&#160;&#160;
				</xsl:for-each>
			</td>
		</tr>
	</table>
</xsl:template>

<xsl:template name="MODULE-FORM-INPUT-LAYOUT">
	<xsl:param name="module_form_title"/>
	<xsl:param name="module_form_input_element"/>

	<tr>
		<td nowrap="nowrap" width="25%" valign="middle">
			<xsl:apply-templates select="$module_form_title"/>
		</td>
		<td width="75%" style="padding-left: 5px; padding-right: 5px;">
			<xsl:apply-templates select="$module_form_input_element"/>
		</td>
	</tr>
</xsl:template>

<xsl:template name="MODULE-FORM-INPUT-DECORATION">
	<xsl:attribute name="class">form_input</xsl:attribute>
</xsl:template>

<xsl:template name="MODULE-FORM-INPUT-TITLE">
	<xsl:param name="module_form_input_title"/>
	<xsl:param name="module_form_input_required"/>

	<span class="form_input_title"><xsl:value-of select="$module_form_input_title"/><xsl:apply-templates select="$module_form_input_required"/></span>
</xsl:template>

<xsl:template name="MODULE-FORM-INPUT-REQUIRED">
	<xsl:param name="module_form_input_required_symbol"/>
	
	<span class="form_input_title_highlight">&#160;<xsl:value-of select="$module_form_input_required_symbol"/>&#160;</span>
</xsl:template>


<xsl:template name="MODULE-FORM-BUTTON">
	<xsl:param name="module_form_button_title"/>
	<xsl:param name="module_form_button_name"/>
	<xsl:param name="module_form_button_type"/>
	<xsl:param name="module_form_button_actions"/>

<!-- Used for multiple forms -->
<!--
	<input type="hidden">
		<xsl:attribute name="name"><xsl:value-of select="$module_form_button_name"/></xsl:attribute>
		<xsl:attribute name="value"><xsl:value-of select="$module_form_button_title"/></xsl:attribute>
	</input>

	<xsl:variable name="button_id" select="generate-id()"/>
	<input type="hidden">
		<xsl:attribute name="name"><xsl:value-of select="$module_form_button_name"/><xsl:value-of select="$button_id"/></xsl:attribute>
		<xsl:attribute name="value"><xsl:value-of select="$module_form_button_title"/></xsl:attribute>
	</input>
	<a class="link_button" href="#">
		<xsl:attribute name="title"><xsl:value-of select="$module_form_button_title"/></xsl:attribute>
		<xsl:call-template name="MODULE-FORM-BUTTON-ACTIONS">
			<xsl:with-param name="module_form_button_additional_actions" select="$module_form_button_actions"/>
			<xsl:with-param name="module_form_button_native_actions">
				<script language="JavaScript" type="text/javascript"><xsl:value-of select="$module_form_button_name"/><xsl:value-of select="$button_id"/>.form.<xsl:choose>
					<xsl:when test="$module_form_button_type = 'reset'">reset</xsl:when>
					<xsl:otherwise>submit</xsl:otherwise>
				</xsl:choose>();return false;</script>
			</xsl:with-param>
		</xsl:call-template>
		<xsl:value-of select="$module_form_button_title"/>
	</a>
-->
	<input type="button">
		<xsl:attribute name="type"><xsl:value-of select="$module_form_button_type"/></xsl:attribute>
		<xsl:attribute name="name"><xsl:value-of select="$module_form_button_name"/></xsl:attribute>
		<xsl:attribute name="value"><xsl:value-of select="$module_form_button_title"/></xsl:attribute>
		<xsl:attribute name="class">form_button</xsl:attribute>
		<xsl:call-template name="MODULE-FORM-BUTTON-ACTIONS">
			<xsl:with-param name="module_form_button_additional_actions" select="$module_form_button_actions"/>
		</xsl:call-template>
	</input>&#160;&#160;
</xsl:template>

<xsl:template name="MODULE-LINK">
	<xsl:param name="module_link_additional_attributes"/>
	<xsl:param name="module_link_title"/>

	<a class="link">
		<xsl:apply-templates select="$module_link_additional_attributes"/>
		<xsl:value-of select="$module_link_title"/>
	</a>
</xsl:template>

<xsl:template name="MODULE-TEXT">
	<xsl:param name="module_text_additional_attributes"/>
	<xsl:param name="module_text_value"/>

	<span class="text">
		<xsl:apply-templates select="$module_link_additional_attributes"/>
		<xsl:value-of select="$module_link_title"/>
	</span>
</xsl:template>

<xsl:template name="MODULE-SIMPLE-LIST">
	<xsl:param name="module_simple_list_title"/>
	<xsl:param name="module_simple_list_description"/>
	<xsl:param name="module_simple_list_items"/>
	<xsl:param name="module_simple_list_paging"/>

<!--$module_simple_list_header, $module_simple_list_title are empty in example -->
	<table cellpadding="0" cellspacing="0" border="0" align="center" class="simple_list_table" width="100%">
		<xsl:if test="$module_simple_list_paging">
			<tr><td class="simple_list_paging"><xsl:apply-templates select="$module_simple_list_paging"/></td></tr>
		</xsl:if>
		<xsl:for-each select="$module_simple_list_items">
			<tr>
				<td>
					<xsl:call-template name="MODULE-SIMPLE-LIST-ZEBRA-COLOR"/>
					<xsl:apply-templates select="current()"/>
				</td>
			</tr>
			<xsl:if test="position()&lt;last()">
				<tr height="1"><td class="simple_list_delimeter"><img border="0" src="{$img_url}empty.gif" width="1" height="1"/></td></tr>
			</xsl:if>
		</xsl:for-each>
		<xsl:if test="$module_simple_list_paging">
			<tr><td class="simple_list_paging"><xsl:apply-templates select="$module_simple_list_paging"/></td></tr>
		</xsl:if>
	</table>
</xsl:template>


<xsl:template name="MODULE-SIMPLE-LIST-ZEBRA-COLOR">
    <xsl:attribute name="class">
		<xsl:choose>
			<xsl:when test="position() mod 2=0">simple_list_item</xsl:when>
			<xsl:otherwise>simple_list_item_highlighted</xsl:otherwise>
		</xsl:choose>
	</xsl:attribute>
</xsl:template>






<xsl:template name="MODULE-PAGE">
	<xsl:param name="module_page_address"/>
	<xsl:param name="module_page_number"/>

	<a class="page_navigator" href="{$module_page_address}">
		<xsl:call-template name="MODULE-PAGE-TITLE">
			<xsl:with-param name="module_page_title" select="$module_page_number"/>
		</xsl:call-template>
	</a>&#160;
</xsl:template>

<xsl:template name="MODULE-PAGE-CURRENT">
	<xsl:param name="module_page_number"/>

	<span class="page_navigator_current_page">
		<xsl:call-template name="MODULE-PAGE-TITLE">
			<xsl:with-param name="module_page_title" select="$module_page_number"/>
		</xsl:call-template>
	</span>&#160;
</xsl:template>

<xsl:template name="MODULE-PAGE-DISABLED">
	<xsl:param name="module_page_number"/>

	<span class="page_navigator_disabled_page">
		<xsl:call-template name="MODULE-PAGE-TITLE">
			<xsl:with-param name="module_page_title" select="$module_page_number"/>
		</xsl:call-template>
	</span>&#160;
</xsl:template>

<xsl:template name="MODULE-PAGE-TITLE">
	<xsl:param name="module_page_title"/>

	<b><xsl:value-of select="$module_page_title"/></b>
</xsl:template>

</xsl:stylesheet>