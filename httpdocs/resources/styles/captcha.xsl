<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="INPUT[TYPE='CAPTCHA']">
	<table border="0" style="width:100%;">
		<tr>
			<td class="mod-form" style="border-width: 0px;">
				<xsl:value-of select="TITLE"/> <span class="requiered">*</span><br/>
			</td>
		</tr>
		<tr>
			<td class="mod-form" style="border-width: 0px; white-space: nowrap;">
				<table border="0">
					<tr>
						<td rowspan="2" valign="top" style="padding: 0px 10px 0px 0px;">
							<input type="text" class="mod-input">
								<xsl:apply-templates select="NAME|VALUE|ONCHANGE|ID|MAXLENGTH"/>
							</input>
						</td>
						<td>
							<img src="{SRC}" id="{NAME}_capthca_image" border="0" alt="" style="cursor: pointer;" onclick="this.realSrc = this.src; this.src = this.realSrc + '&amp;' + Math.random();"/>
						</td>
					</tr>
					<tr>
						<td style="text-align: center">
							<a href="#" class="mod-form-title">
								<xsl:attribute name="onclick">
									var image = document.getElementById('<xsl:value-of select="NAME"/>' + '_capthca_image');
								 	image.realSrc = image.src;
								 	image.src = image.realSrc + '&amp;' + Math.random();
								 	return false;
								</xsl:attribute>
								<xsl:value-of select="REFRESH-CONTROL-TITLE"/>
							</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</xsl:template>

<xsl:template match="INPUT/NAME|INPUT/TYPE|INPUT/VALUE|INPUT/ONCHANGE|INPUT/ID|INPUT/MAXLENGTH">
	<xsl:attribute name = "{name()}"><xsl:value-of select = "."/></xsl:attribute>
</xsl:template>

</xsl:stylesheet>