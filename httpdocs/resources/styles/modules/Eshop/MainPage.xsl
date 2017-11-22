<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="ESHOP-PAGE">
	<xsl:call-template name="MODULE-CSS"/>
	<br/>
	<xsl:apply-templates select="SEARCH-FORM"/>
	
	<xsl:choose>
		<xsl:when test="@IS-SHOW-CATEGORIES-FIRST>0">	
			<xsl:apply-templates select="CATEGORY-LIST"/>
			<xsl:apply-templates select="PRODUCT-LIST"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:apply-templates select="PRODUCT-LIST"/><br/>
			<xsl:apply-templates select="CATEGORY-LIST"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>