<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
							xmlns:g="http://base.google.com/ns/1.0"
							xmlns:c="http://base.google.com/cns/1.0">

<!-- 
	Params: $imagePrefix, $shopUrl
-->
<xsl:output method="xml" indent="yes" cdata-section-elements="description"/>

<xsl:template match="/">
	<xsl:apply-templates select="ESHOP-FEED" />
</xsl:template>

<xsl:template match="/ESHOP-FEED">
	<rss version='2.0'>
		<channel>
			<title><xsl:value-of select="@TITLE" /></title>
			<description><xsl:value-of select="@DESCRIPTION" /></description>
			<link><xsl:value-of select="$shopUrl" /></link>

			<xsl:apply-templates select="LIST/PRODUCT-LIST/PRODUCT" mode="initial" />
		</channel>
	</rss>
</xsl:template>

<xsl:template match="PRODUCT" mode="initial">
	<xsl:choose>
		<xsl:when test="count(COLORS/ITEM) > 0">
			<xsl:variable name="product" select="." />
			<xsl:for-each select="COLORS/ITEM">
				<xsl:apply-templates select="$product" mode="colored">
					<xsl:with-param name="color" select="@NAME" />
					<xsl:with-param name="url"><xsl:apply-templates select="@SRC" /></xsl:with-param>
				</xsl:apply-templates>
			</xsl:for-each>
		</xsl:when>

		<xsl:otherwise>
			<xsl:apply-templates select="." mode="colored">
				<xsl:with-param name="color" select="''" /> 
				<xsl:with-param name="url"><xsl:apply-templates select="IMAGE/@SRC" /></xsl:with-param>
			</xsl:apply-templates>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template match="PRODUCT" mode="colored">
	<xsl:param name='url' />
	<xsl:param name='color' />
	<item> 
		<title><xsl:value-of select="@NAME" /></title>
		<description>
			<xsl:if test='string-length($url) > 0'>
			<![CDATA[<img src="]]><xsl:value-of select='$url' /><![CDATA[" alt="Product image" /><br/>]]>
			</xsl:if>
			<xsl:value-of select="FULL-DESCRIPTION" />
		</description>

		<guid>
			<xsl:value-of select="$shopUrl" />?<xsl:value-of select="/ESHOP-FEED/@VIEW-VARIABLE" />=productPage&amp;product=<xsl:value-of select="@ID" />&amp;color=<xsl:value-of select='$color'/>
		</guid>
		<g:id><xsl:value-of select='@ID' />&amp;color=<xsl:value-of select='$color'/></g:id>

		<link>
			<xsl:value-of select="$shopUrl" />?<xsl:value-of select="/ESHOP-FEED/@VIEW-VARIABLE" />=productPage&amp;product=<xsl:value-of select="@ID" />
		</link>

		<xsl:if test='string-length($url)'>
			<enclosure>
				<xsl:attribute name='url'><xsl:value-of select='$url' /></xsl:attribute>
				<xsl:attribute name='length'>0</xsl:attribute>
				<xsl:attribute name='type'>image/png</xsl:attribute>
			</enclosure>
			<g:image_link><xsl:value-of select='$url' /></g:image_link>
		</xsl:if>

		<g:price><xsl:value-of select='@RAW-PRICE'/></g:price>
		<g:currency><xsl:value-of select='@CURRENCY-TYPE'/></g:currency>
		<xsl:if test='$color'>
			<g:color><xsl:value-of select="$color" /></g:color>
		</xsl:if>
		<xsl:if test='@INVENTORY'>
			<g:quantity><xsl:value-of select='@INVENTORY' /></g:quantity>
		</xsl:if>

		<xsl:apply-templates select="OPTIONS/ITEM" />
		<xsl:apply-templates select="CATEGORIES/CATEGORY" />
	</item>
</xsl:template>

<xsl:template match="CATEGORY">
	<g:product_type><xsl:value-of select='@NAME' /></g:product_type>
</xsl:template>

<xsl:template match="PRODUCT/OPTIONS/ITEM[@RSS!='']">
	<xsl:variable name="tagName" select="@RSS"/>
	<xsl:element name="{$tagName}"><xsl:value-of select='translate(@FORMAT-STR, "/", ";")' /></xsl:element>
<!--	<xsl:for-each select="OPTION">
		<xsl:element name="{$tagName}"><xsl:value-of select='@VALUE' /></xsl:element>
	</xsl:for-each>-->
</xsl:template>

<!-- translate image URL to absolute -->
<xsl:template match="IMAGE/@SRC | ITEM/@SRC">
	<xsl:choose>
		<xsl:when test='starts-with(., "http://") or starts-with(., "https://")'>
			<xsl:value-of select="." />
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select='$imagePrefix' />/<xsl:value-of select="." />
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>

