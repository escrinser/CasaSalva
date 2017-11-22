<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:template match="STATUS-MESSAGE[@TYPE='successful']">
	<xsl:call-template name="MODULE-CSS"/>
	<xsl:if test="MESSAGE">
		<table width="100%" border="0" class="statuses-success">
			<tr>
				<td width="20" style="padding: 7px 0px 7px 9px;">
					<img>
						<xsl:attribute name="src"><xsl:value-of select="$img_url"/>statuses-success.gif</xsl:attribute>
					</img>
				</td>
				<td style="padding: 7px 7px 7px 0px;">
					<span style="font-size: 8pt; color: #7C7C7C;"><xsl:apply-templates select="MESSAGE"/></span>
				</td>
			</tr>
		</table>
	</xsl:if>
</xsl:template>

<xsl:template match="STATUS-MESSAGE[@TYPE='critical']">
	<xsl:call-template name="MODULE-CSS"/>
	<xsl:if test="MESSAGE">
		<table class="pageContent report_error" width="100%" style="margin-bottom: 10px; margin-top: 10px; background-color:#F7F7F7; border:1px solid #C80000; color:#C80000;">
			<tr>
				<td width="20">
					<img>
						<xsl:attribute name="src"><xsl:value-of select="$img_url"/>statuses-error.gif</xsl:attribute>
					</img>
				</td>
				<td>
					<span class="main-font"><xsl:apply-templates select="MESSAGE"/></span>
				</td>
			</tr>
		</table>
	</xsl:if>
</xsl:template>

<xsl:template match="STATUS-MESSAGE/MESSAGE">
	<xsl:value-of select="."/><br/>
</xsl:template>

</xsl:stylesheet>
