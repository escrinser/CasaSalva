<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LIST">
<xsl:call-template name="MODULE-CSS"/>
<xsl:call-template name="FORUM-SEARCH"/>

<xsl:if test="count(ROW) != 0">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse;">
		<tr>
			<td width="100%" class="mod-category-header" style="padding: 5px 10px;">
				<b><xsl:value-of select="LOCALE/NAME"/></b>
			</td>
			<td class="mod-category-header" style="padding: 5px 10px;">
				<b><xsl:value-of select="LOCALE/TOPICS"/></b>
			</td>
			<td class="mod-category-header" style="padding: 5px 10px;">
				<b><xsl:value-of select="LOCALE/REPLIES"/></b>
			</td>
		</tr>
		<xsl:apply-templates select="ROW" />
	</table>
</xsl:if>
</xsl:template>

<xsl:template match="LIST/ROW">
<tr>
	<td class="mod-category-body" style="padding: 5px 10px;">
		<a href="{../@URL}?category={ID/.}" class="mod-category-body-a"><b><xsl:value-of select="NAME"/></b></a><br/>
		<xsl:apply-templates select="DESCRIPTION"/>
	</td>
	<td align="right" class="mod-category-body" style="padding: 5px 10px;">
		<xsl:choose>
			<xsl:when test="ITEMS_COUNT != ''"><xsl:value-of select="ITEMS_COUNT"/></xsl:when>
			<xsl:otherwise>0</xsl:otherwise>
		</xsl:choose>
	</td>
	<td align="right" class="mod-category-body" style="padding: 5px 10px;">
		<xsl:choose>
			<xsl:when test="SUB_ITEMS_COUNT != ''"><xsl:value-of select="SUB_ITEMS_COUNT"/></xsl:when>
			<xsl:otherwise>0</xsl:otherwise>
		</xsl:choose>
	</td>
</tr>
</xsl:template>

<xsl:template match="DESCRIPTION">
	<xsl:value-of select="." disable-output-escaping="yes"/>
</xsl:template>

</xsl:stylesheet>