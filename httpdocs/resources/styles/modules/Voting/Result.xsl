<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="VOTING-RESULT">
	<xsl:call-template name="MODULE-CSS"/>
	<xsl:choose>
		<xsl:when test="@error!='0'">
       		<center><b><xsl:value-of select="@error"/></b></center>
      	</xsl:when>
		<xsl:otherwise>
			<table cellpadding="0" cellspacing="0" border="0" width="100%" class="mod-form" style="margin: 10px 0;">
				<tr>
					<td colspan="3" align="center" style="padding-top: 10px;">
						<xsl:apply-templates select="QUESTION"/>
					</td>
				</tr>
				<xsl:apply-templates select="ANSWERS"/>
				<tr>
					<td class="mod-form-title" style="padding-left: 10px; padding-top: 10px; padding-bottom: 10px; width: 50%;">
						<b>
							<xsl:value-of select="TOTAL/@name"/>
						</b>
					</td>
					<td class="mod-form-title" align="left" style="padding-top: 10px; padding-bottom: 10px; width: 25%;">
						<b>
							<xsl:value-of select="TOTAL/@total_number"/>
						</b>
					</td>
					<td class="mod-form-title" align="right" style="padding-top: 10px; padding-bottom: 10px; padding-right: 10px; width: 25%;" >
						<b>
							<xsl:value-of select="TOTAL/@total_percenge"/>&#37;
						</b>
					</td>
				</tr>
			</table>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template match="QUESTION">
	<xsl:value-of select="." disable-output-escaping="yes"/>
</xsl:template>

<xsl:template match="ANSWERS/ANSWER">
	<tr>
		<td class="mod-form-title" style="padding-left: 10px; padding-top: 5px; width: 50%;">
			<xsl:value-of select="@value"/><br/>
			<img height="10">
				<xsl:attribute name="width"><xsl:value-of select="@width"/></xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of select="@imageSrc"/></xsl:attribute>
			</img>
		</td>
		<td class="mod-form-title" style="padding-top: 5px; width: 25%;" align="left">
			<br/>
			<xsl:value-of select="@total_number"/>
		</td>
		<td class="mod-form-title" style="padding-top: 5px; padding-right: 10px; width: 25%;" align="right">
			<br/>
			<xsl:value-of select="@total_percenge"/>&#37;
		</td>
	</tr>
</xsl:template>

</xsl:stylesheet>