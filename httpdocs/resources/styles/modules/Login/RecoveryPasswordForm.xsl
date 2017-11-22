<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="RECOVERY-PASSWORD-FORM">

<xsl:call-template name="MODULE-CSS"/>

<script src="resources/js/validator.js">void(1);</script>
<script src="resources/js/utils.js">void(1);</script>
<script type="text/javascript" language="javascript">

<xsl:comment>
function validateForm() {
	if (validateField('SB_Validator.notEmpty', 'name', '<xsl:value-of select="@EMPTY-USERNAME"/>')) {
		document.forms['user'].submit();
		return true;
	} else {
		return false;
	}
}
//</xsl:comment>
</script>

<form method="post" name="user">

<input type="hidden">
	<xsl:attribute name="name"><xsl:value-of select="@ACTION-VARIABLE"/></xsl:attribute>
	<xsl:attribute name="value"><xsl:value-of select="@SAVE-ACTION"/></xsl:attribute>
</input>

<table cellpadding="10" cellspacing="0" border="0" width="300px" class="mod-form" style="margin: 10px 0;" align="center">
	<tr>
		<td colspan="2" class="mod-form-title"><b><span><xsl:value-of select="@FORGOT-YOUR-PASSWORD"/></span></b></td>
	</tr>
	<tr>
		<td colspan="2" style="padding: 0 5px;">
			<div class="mod-form-hr" style="height:1px;"><span></span></div>
		</td>
	</tr>
	<tr>
		<td colspan="2"><xsl:value-of select="@ENTER-YOUR-NAME"/></td>
	</tr>
	<tr>
		<td width="30%">
			<xsl:value-of select="@USER-NAME"/>
			<span class="requiered" id="name_asterix">*</span>
		</td>
		<td width="70%">
			<input name="name" type="text" id="name" class="mod-input" style="width:100%" >
				<xsl:attribute name="value"><xsl:value-of select="@USER-NAME-VALUE"/></xsl:attribute>
			</input>
		</td>
	</tr>
	<tr>
		<td colspan="2">

			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td>
						<a class="mod-form-a">
							<xsl:attribute name="href"><xsl:value-of select="@LOGIN-ACTION"/></xsl:attribute>
							<xsl:value-of select="@GO-TO-LOGIN-PAGE"/>
						</a>
					</td>
					<td align="right">
						<input type="submit" class="mod-form-button" onclick="return validateForm();">
							<xsl:attribute name="value"><xsl:value-of select="@SUBMIT"/></xsl:attribute>
						</input>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>


</form>

</xsl:template>

</xsl:stylesheet>	