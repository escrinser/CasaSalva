<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LIST">
<xsl:call-template name="MODULE-CSS"/>
<xsl:call-template name="FORUM-SEARCH"/>

<div><a href="{@URL}"><xsl:value-of select="LOCALE/FORUM"/></a>&#160;&gt;&#160;<xsl:value-of select="LOCALE/SEARCH"/></div><br/>
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse;">
	<tr>
		<td class="mod-category-header" style="padding: 5px 10px;">
			<b><xsl:value-of select="LOCALE/THREAD"/></b>
		</td>
		<td class="mod-category-header" style="padding: 5px 10px;">
			<b><xsl:value-of select="LOCALE/AUTHOR"/></b>
		</td>
		<td class="mod-category-header" style="padding: 5px 10px;">
			<b><xsl:value-of select="LOCALE/LAST-MESSAGE"/></b>
		</td>
	</tr>
	<xsl:apply-templates select="ROW" />
</table>

<br/>

<xsl:apply-templates select="PAGING"/>
</xsl:template>

<xsl:template match="LIST/ROW">
<tr>
	<td class="mod-category-body" style="padding: 5px 10px;">
		<a href="{../@URL}?topic={ID/.}" class="mod-form-title"><xsl:value-of select="SUBJECT"/></a>
	</td>
	<td class="mod-category-body" style="padding: 5px 10px;"><xsl:value-of select="AUTHOR_NAME"/></td>
	<td class="mod-category-body" style="padding: 5px 10px;"><xsl:value-of select="LAST_MESSAGE_CREATED"/></td>
</tr>
</xsl:template>

</xsl:stylesheet>