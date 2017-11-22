<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LIST">

	<xsl:apply-templates select="TEXT-BEFORE"/>

	<xsl:call-template name="MODULE-CSS"/>

	<xsl:apply-templates select="POST"/>

	<xsl:apply-templates select="CONTENT/MESSAGE"/>
	
	<xsl:apply-templates select="PAGING"/>
<!--
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="mod" style="margin: 10px 0;">
	<tr>
		<td style="padding: 5px 0;">10 items total</td>
		<td align="right" style="padding: 5px 0;">
			<a href="#" class="mod-a">&lt; &lt; First</a> |
			<a href="#" class="mod-a">&lt; Previous</a> |
			<a href="#" class="mod-a">1</a>
			<a href="#" class="mod-a">2</a>
			<b>3</b>
			<a href="#" class="mod-a">4</a>
			<a href="#" class="mod-a">5</a> |
			<a href="#" class="mod-a">Next &gt;</a> |
			<a href="#" class="mod-a">Last &gt; &gt;</a>
		</td>
	</tr>
</table>
-->
</xsl:template>

<xsl:template match="TEXT-BEFORE">
	<xsl:value-of select="." disable-output-escaping="yes"/>
	<br/><br/>
</xsl:template>

<xsl:template match="CONTENT/MESSAGE">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; margin-bottom: 10px;">
		<tr>
			<td class="mod-comment-header" style="padding: 5px 10px;">
				<div style="float:left;"><xsl:value-of select="@AUTHOR"/>
					<xsl:if test="@EMAIL!=''"><xsl:call-template name="EMAIL"/></xsl:if>
					<xsl:if test="@URL!=''"><xsl:call-template name="URL"/></xsl:if>
				</div>
				<div style="float:right;"><xsl:value-of select="@CREATED"/></div>
			</td>
		</tr>
		<tr>
			<td class="mod-comment-body" style="padding: 5px 10px;">
				<div class="mod-comment-body-title" style="margin-bottom: 10px;"><b><xsl:value-of select="@NAME"/></b></div>
				<xsl:value-of select="." disable-output-escaping="yes"/>
				<xsl:if test="@IS-EDITABLE">
					<xsl:call-template name="ACTIONS"/>
				</xsl:if>
			</td>
		</tr>
	</table>
</xsl:template>

<xsl:template name="AUTHOR">
	<xsl:choose>
		<xsl:when test="@EMAIL">
			<a class="mod-comment-header-a">
				<xsl:attribute name="href">mailto:<xsl:value-of select="@EMAIL"/></xsl:attribute>
				<xsl:value-of select="@AUTHOR"/>
			</a>
		</xsl:when>		
		<xsl:otherwise>
			<xsl:value-of select="@AUTHOR"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="ACTIONS">
	<div align="right">
		<a class="mod-item-body-a-strong">
			<xsl:attribute name="href"><xsl:value-of select="@EDIT-ACTION"/></xsl:attribute>
			<xsl:value-of select="@EDIT"/>
		</a>
		&#160;
		<a class="mod-item-body-a-strong">
			<xsl:attribute name="href"><xsl:value-of select="@DELETE-ACTION"/></xsl:attribute>
			<xsl:value-of select="@DELETE"/>
		</a>
	</div>
</xsl:template>

<xsl:template name="EMAIL">
	<a>
		<xsl:attribute name="href">mailto:<xsl:value-of select="@EMAIL"/></xsl:attribute>
		<img src="resources/images/mod_email.gif" border="0" alt="" align="absmiddle" style="margin-left: 10px;"/>
	</a>
</xsl:template>
	
<xsl:template name="URL">
	<a>
		<xsl:attribute name="href"><xsl:value-of select="@URL"/></xsl:attribute>
		<img src="resources/images/mod_url.gif" border="0" alt="" align="absmiddle" style="margin-left: 5px;"/>
	</a>		
</xsl:template>

</xsl:stylesheet>