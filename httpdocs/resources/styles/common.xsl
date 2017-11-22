<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="report.xsl"/>
<xsl:include href="template.xsl"/>

<xsl:template name="MODULE-CSS">
<!-- ###### Check it -->
	<!--<style type="text/css">@import url(<xsl:value-of select="$css_url"/>/gui_style.css);</style>	-->
	<style type="text/css">@import url(<xsl:value-of select="$css_url"/>/styles.css);</style>
	<style type="text/css">@import url(<xsl:value-of select="$css_url"/>/styles_ext.css);</style>
</xsl:template>

<xsl:template name="LOOP-STRING">
	<xsl:param name="string"/>
	<xsl:param name="level"/><xsl:if test="$level > 0"><xsl:value-of select="$string"/><xsl:call-template name="LOOP-STRING">
			<xsl:with-param name="string" select="$string"/>
			<xsl:with-param name="level" select="$level - 1"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>

<xsl:template match="BACK-TO-HOME">
	<br/>
	<a class="pageContent" id="back_to_home">
		<xsl:attribute name="href"><xsl:value-of select="@URL"/></xsl:attribute>
		&lt;&lt; <xsl:value-of select="@TITLE"/>
	</a><br/>
</xsl:template>

</xsl:stylesheet>