<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LIST">
	<xsl:call-template name="MODULE-CSS"/>
	<xsl:apply-templates select="CATEGORY-DESCRIPTION"/>
	<xsl:apply-templates select="CONTENT/POST"/>
	<xsl:apply-templates select="PAGING"/>

	<xsl:if test="CATEGORY-DESCRIPTION">
		<xsl:apply-templates select="BACK-TO-HOME"/>
	</xsl:if>
</xsl:template>

<xsl:template match="CATEGORY-DESCRIPTION">
	<div class="mod-category-body" style="padding: 10px; margin: 0 0 10px 0;">
		<xsl:value-of select="." disable-output-escaping="yes"/>
	</div>
</xsl:template>

<xsl:template match="CONTENT/POST">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; margin-bottom: 10px;">
		<tr>
			<td class="mod-item-header" style="padding: 5px 10px;">
				<div style="float:left;"><b><xsl:value-of select="@NAME"/></b></div>
				<div style="float:right;"><xsl:value-of select="@CREATED"/></div>
			</td>
		</tr>
		<tr>
			<td class="mod-item-body-alter" style="padding: 5px 10px;">
				<xsl:value-of select="." disable-output-escaping="yes"/>
				<div style="float:left;">
					<a class="mod-item-body-a-strong">
						<xsl:attribute name="href"><xsl:value-of select="@COMMENT-LINK"/></xsl:attribute>
						<xsl:value-of select="@COMMENT-COUNT"/>&#160;<xsl:value-of select="../../@COMMENTS-WORD"/>
					</a>
				</div>
				<xsl:if test="@IS-TRUNCATED='yes'">
					<div style="float:right;">
						<a class="mod-item-body-a-strong">
							<xsl:attribute name="href"><xsl:value-of select="@COMMENT-LINK"/></xsl:attribute>
							<xsl:value-of select="../../@READ-MORE"/>
						</a>
					</div>
				</xsl:if>
			</td>
		</tr>
	</table>
</xsl:template>

</xsl:stylesheet>