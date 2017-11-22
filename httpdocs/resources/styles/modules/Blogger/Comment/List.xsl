<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LIST">
	<xsl:call-template name="MODULE-CSS"/>
	<xsl:apply-templates select="POST"/>
	<xsl:apply-templates select="CONTENT/COMMENT"/>
	<xsl:apply-templates select="PAGING"/>
</xsl:template>

<xsl:template match="POST">
	<!--<div class="text-header"><xsl:value-of select="@NAME"/></div>-->
	
	<table cellpadding="0" cellspacing="0" border="0" width="100%"  class="mod-item-body" style="padding: 10px; margin-bottom: 10px;">
		<tr>
			<td colspan="2">
				<div class="mod-item-body-title" style="margin-bottom: 10px;"><b><xsl:value-of select="@CREATED"/></b></div>
				<xsl:value-of select="." disable-output-escaping="yes"/>
			</td>
		</tr>
		<tr><td height="10" colspan="2"><div class="mod-item-body-hr" style="height:1px;"><span></span></div></td></tr>
		<tr>
			<td>
				<a class="mod-item-body-a">
					<xsl:attribute name="href"><xsl:value-of select="@BACK-TO-POST-LINK"/></xsl:attribute>
					&lt;&lt; <xsl:value-of select="@BACK-TO-POST-LINK-WORD"/>
				</a>
			</td>
			<td align="right"><a href="#add" class="mod-item-body-a-strong"><xsl:value-of select="@ADD-COMMENT-LINK"/></a></td>
		</tr>
	</table>
</xsl:template>

<xsl:template match="CONTENT/COMMENT">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; margin-bottom: 10px;">
		<tr>
			<td class="mod-comment-header" style="padding: 5px 10px;">
				<div style="float:left;"><xsl:value-of select="@AUTHOR"/></div>
				<div style="float:right;"><xsl:value-of select="@CREATED"/></div>
			</td>
		</tr>
		<tr>
			<td class="mod-comment-body" style="padding: 5px 10px;">
				<div class="mod-comment-body-title" style="margin-bottom: 10px;"><b><xsl:value-of select="@NAME"/></b></div>
				<xsl:value-of select="." disable-output-escaping="yes"/>
			</td>
		</tr>
	</table>
</xsl:template>

</xsl:stylesheet>