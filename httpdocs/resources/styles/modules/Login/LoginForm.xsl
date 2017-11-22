<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LOGIN-FORM">

<xsl:call-template name="MODULE-CSS"/>

<script src="resources/js/validator.js">void(1);</script>
<script src="resources/js/utils.js">void(1);</script>
<script type="text/javascript" language="javascript">

<xsl:comment>
function validateForm() {
	if (validateField('SB_Validator.notEmpty', 'name', '<xsl:value-of select="@EMPTY-USERNAME"/>')
		&amp;&amp; validateField('SB_Validator.notEmpty', 'password', '<xsl:value-of select="@EMPTY-PASSWORD"/>') 
	) {
		document.forms['login'].submit();
		return true;
	} else {
		return false;
	}
}
//</xsl:comment>
</script>

<form name="login" method="post">
<input type="hidden" name="moduleLoginAction" value="login"/>
<table cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td>
<div style="float: left; padding-right: 10px;">

	<table cellpadding="10" cellspacing="0" border="0" width="270px" class="mod-form" style="margin: 10px 0 0 0;" height="210px">
		<tr>
			<td colspan="2" class="mod-form-title"><b><xsl:value-of select="@PROVIDE-LOGIN-INFORMATION"/></b></td>
		</tr>
		<tr>
			<td colspan="2" style="padding: 0 5px;">
				<div class="mod-form-hr" style="height: 1px;">
					<span></span>
				</div>
			</td>
		</tr>
		<tr>
			<td width="30%" nowrap="true">
				<xsl:value-of select="@USER-NAME"/>&#160;<span class="requiered" id="name_asterix">*</span>
			</td>
			<td width="70%">
				<input type="text" name="name" id="name" class="mod-input" style="width: 100%;" />
			</td>
		</tr>
		<tr>
			<td width="30%" nowrap="true">
				<xsl:value-of select="@PASSWORD"/>&#160;<span class="requiered" id="password_asterix">*</span>
			</td>
			<td width="70%">
				<input name="password" id="password" type="password" class="mod-input" style="width: 100%" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="checkbox" name="rememberMe" id="rememberMe" value="1"/><label for="rememberMe"><xsl:value-of select="@REMEMBER-MY-LOGIN"/></label></td>
		</tr>
		<tr>
			<td colspan="2">
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
					<tr>
						<xsl:if test="@ENABLE-PASSWORD-RECOVERY=1">
						<td>
							<a class="mod-form-a">
								<xsl:attribute name="href"><xsl:value-of select="@RECOVERY-PASSWORD-ACTION"/></xsl:attribute>
								<xsl:value-of select="@FORGOT-YOUR-PASSWORD"/>
							</a>
						</td>
						</xsl:if>
						<td align="right">
							<input type="submit" name="action"   class="mod-form-button" onclick="return validateForm();">
								<xsl:attribute name="value"><xsl:value-of select="@LOGIN"/></xsl:attribute>
							</input>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
</div>	

<xsl:if test="@ENABLE-REGISTRATION=1">
	<div style="float: left;">
	
	<table cellpadding="10" cellspacing="0" border="0" width="270px" class="mod-form" style="margin: 10px 0 0 0;" height="210px" align="center">
		<tr>
			<td colspan="2" class="mod-form-title"><b><xsl:value-of select="@REGISTRATION"/></b></td>
		</tr>
		<tr>
			<td colspan="2" style="padding: 0 5px;">
				<div class="mod-form-hr" style="height: 1px;">
					<span></span>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2"><xsl:value-of select="@REGISTRATION-INFO"/></td>
		</tr>
		<tr>
			<td colspan="2" height="100%"></td>

		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" class="mod-form-button">
					<xsl:attribute name="value"><xsl:value-of select="@REGISTER-NOW"/></xsl:attribute>
					<xsl:attribute name="onclick">document.location.href="<xsl:value-of select="@REGISTER-ACTION"/>"; return false;</xsl:attribute>
				</input>
			</td>
		</tr>
	</table>
	</div>
</xsl:if>
</td>
</tr>
</table>
</form>
</xsl:template>

</xsl:stylesheet>					