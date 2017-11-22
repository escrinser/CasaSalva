<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="BACK-TO-CATALOGUE-LINK">
	<a class="pageContent">
		<xsl:attribute name="href"><xsl:value-of select="/ESHOP-PAGE/@CATALOGUE-LINK"/></xsl:attribute>
		&lt;&lt; <xsl:value-of select="/ESHOP-PAGE/LOCALE/BACK-TO-CATALOGUE"/>
	</a><br/>
</xsl:template>

<xsl:template match="PATH-INFO">
	<b><span><xsl:apply-templates select="@PAGE-TITLE"/><xsl:apply-templates select="ITEM"/></span></b>
</xsl:template>

<xsl:template match="PATH-INFO/ITEM">
	<a href="?{/ESHOP-PAGE/@VIEW-VARIABLE}=productListPage&#38;category={@ID}"><xsl:value-of select="."/></a>
	<xsl:if test="position()!=last()">&#160;&#62;&#160;</xsl:if>
</xsl:template>

<xsl:template match="PATH-INFO/@PAGE-TITLE">
	<a href="?"><xsl:value-of select="."/></a>
	<xsl:if test="../ITEM">&#160;&#62;&#160;</xsl:if>
</xsl:template>

</xsl:stylesheet>