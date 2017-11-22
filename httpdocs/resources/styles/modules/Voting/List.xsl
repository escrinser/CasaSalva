<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="VOTING-LIST">
	<xsl:call-template name="MODULE-CSS"/>
	<xsl:choose>
		<xsl:when test="@error!='0'">
       		<center><b><xsl:value-of select="@error"/></b></center>
      	</xsl:when>
		<xsl:otherwise>
			<form method="POST" name="voting">
				<input type="hidden" name="votingId">
					<xsl:attribute name="value"><xsl:value-of select="@VOTING-ID"/></xsl:attribute>
				</input>
				<input type="hidden" name="voting_result" value="1"/>
				<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; padding: 5px;">
					<tr>
						<td colspan="2" style="padding: 10px;" class="mod-item-header">
							<xsl:apply-templates select="QUESTION"/>
						</td>
					</tr>
					<xsl:apply-templates select="ANSWERS"/>
					<tr>
						<td colspan="2" align="right" style="padding-top:10px;padding-bottom:10px;">
							<input type="submit" name="submit" style="width:70px">
                                <xsl:if test="SUBMIT/@disabled=1">
                                    <xsl:attribute name="disabled"></xsl:attribute>
                                </xsl:if>
								<xsl:attribute name="value"><xsl:value-of select="SUBMIT/@value"/></xsl:attribute>
							</input>
						</td>
					</tr>
				</table>
			</form>
		</xsl:otherwise>	
	</xsl:choose>	
</xsl:template>

<xsl:template match="QUESTION">
	<xsl:value-of select="." disable-output-escaping="yes"/>
</xsl:template>

<xsl:template match="ANSWERS/ANSWER">
<tr>
	<td class="mod-item-body" style="width:10%" align="center">
		<input type="radio" name="answers">
			<xsl:attribute name="value"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="@checked=1">
				<xsl:attribute name="checked"><xsl:value-of select="@checked"/></xsl:attribute>
			</xsl:if>
		</input>
	</td>
	<td class="mod-item-body" style="padding: 5px 10px;">
		<xsl:value-of select="@value"/>
	</td>
</tr>
</xsl:template>

</xsl:stylesheet>