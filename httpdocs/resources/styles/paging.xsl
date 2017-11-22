<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="PAGING">
<!--
+ first, last, previous, next
+ delimeter
-->
<table class="mod-comment-body" style="width:100%;" border="0">
	<tr>
		<td style="padding-left: 10px;">
			<xsl:value-of select="@TOTAL"/>&#160;<xsl:value-of select="@LOCALIZE-ITEMS-TOTAL"/>
		</td>
		<td align="right" class="mod">  
			<xsl:apply-templates select="PAGE"/>
		</td>	
	</tr>	
</table>	
</xsl:template>


<xsl:template match="PAGE">
	<xsl:choose>
		<xsl:when test="@CURRENT='yes'">
			<xsl:call-template name="MODULE-PAGE-CURRENT">
				<xsl:with-param name="module_page_number" select="@TITLE"/>
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="MODULE-PAGE">
				<xsl:with-param name="module_page_address"><xsl:value-of select="ADDRESS"/></xsl:with-param>
				<xsl:with-param name="module_page_number" select="@TITLE"/>
			</xsl:call-template>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>