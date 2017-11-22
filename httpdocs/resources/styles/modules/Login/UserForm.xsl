<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="USER-FORM">

<xsl:call-template name="MODULE-CSS"/>

<script src="resources/js/validator.js">void(1);</script>
<script src="resources/js/utils.js">void(1);</script>
<script type="text/javascript" language="javascript">

<xsl:comment>
function validateForm() {
	if (validateField('SB_Validator.notEmpty', 'name', '<xsl:value-of select="@EMPTY-USERNAME"/>')
		&amp;&amp; validateField('SB_Validator.notEmpty', 'email', '<xsl:value-of select="@EMPTY-EMAIL"/>')
		&amp;&amp; validateField('SB_Validator.isEmail', 'email', '<xsl:value-of select="@INCORRECT-EMAIL"/>')

		<xsl:choose>
			<xsl:when test="@IS-PASSWORD-REQUIRED=1">
		&amp;&amp; validatePassword()
			</xsl:when>
			<xsl:otherwise>
		&amp;&amp; ((document.getElementById('password').value==''  &amp;&amp; document.getElementById('confirmPassword').value=='') || validatePassword())
			</xsl:otherwise>
		</xsl:choose>
//		&amp;&amp; validateField('SB_Validator.notEmpty', 'first_name', '<xsl:value-of select="@EMPTY-FIRSTNAME"/>')
//		&amp;&amp; validateField('SB_Validator.notEmpty', 'last_name', '<xsl:value-of select="@EMPTY-LASTNAME"/>')
//		&amp;&amp; validateField('SB_Validator.notEmpty', 'phone_number', '<xsl:value-of select="@EMPTY-PHONE"/>')
		&amp;&amp; (document.getElementById('phone_number').value=='' || validateField('SB_Validator.isPhone', 'phone_number', '<xsl:value-of select="@INCORRECT-PHONE"/>'))
//		&amp;&amp; validateField('SB_Validator.notEmpty', 'address1', '<xsl:value-of select="@EMPTY-ADDRESS"/>')
//		&amp;&amp; validateField('SB_Validator.notEmpty', 'country', '<xsl:value-of select="@EMPTY-COUNTRY"/>')
//		&amp;&amp; validateField('SB_Validator.notEmpty', 'zip', '<xsl:value-of select="@EMPTY-ZIP"/>')
	) {
		document.forms['user'].submit();
		return true;
	} else {
		return false;
	}
}

function validatePassword() {
	return 	validateField('SB_Validator.notEmpty', 'password', '<xsl:value-of select="@EMPTY-PASSWORD"/>')
	&amp;&amp; validateField('SB_Validator.notEmpty', 'confirmPassword', '<xsl:value-of select="@EMPTY-CONFIRMPASSWORD"/>')
	&amp;&amp; extendedValidateField("SB_Validator.isEqual(document.getElementById('password').value, document.getElementById('confirmPassword').value)", 'confirmPassword', '<xsl:value-of select="@PASSWORD-MISMATCH"/>');

}

//</xsl:comment>
</script>

<form method="post" name="user">

<input type="hidden">
	<xsl:attribute name="name"><xsl:value-of select="@ACTION-VARIABLE"/></xsl:attribute>
	<xsl:attribute name="value"><xsl:value-of select="@SAVE-ACTION"/></xsl:attribute>
</input>

<table cellpadding="0" cellspacing="0" width="100%" border="0">
<tr>
	<td colspan="2" style="padding: 5px;">
		<table cellpadding="10" cellspacing="0" border="0" width="100%" class="mod-form" style="margin: 10px 0;" align="center">
			<tr>
				<td>
					<b><span class="mod-form-title"><xsl:value-of select="@LOGIN"/></span></b>

					<div class="mod-form-hr" style="height:1px;"><span></span></div>
					<table cellpadding="5" cellspacing="0" width="100%" class="mod-form" style="margin: 10px 0; border: 0;">
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@USER-NAME"/></xsl:with-param>
							<xsl:with-param name="name">name</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@NAME"/></xsl:with-param>
							<xsl:with-param name="disabled"><xsl:if test="@USER-NAME-DISABLED>0">true</xsl:if></xsl:with-param>
							<xsl:with-param name="required">true</xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@EMAIL"/></xsl:with-param>
							<xsl:with-param name="name">email</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@EMAIL"/></xsl:with-param>
							<xsl:with-param name="required">true</xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@PASSWORD"/></xsl:with-param>
							<xsl:with-param name="name">password</xsl:with-param>
							<xsl:with-param name="isPassword">true</xsl:with-param>
							<xsl:with-param name="required"><xsl:if test="@IS-PASSWORD-REQUIRED=1">true</xsl:if></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@PASSWORD-CONFIRMATION"/></xsl:with-param>
							<xsl:with-param name="name">confirmPassword</xsl:with-param>
							<xsl:with-param name="isPassword">true</xsl:with-param>
							<xsl:with-param name="required"><xsl:if test="@IS-PASSWORD-REQUIRED=1">true</xsl:if></xsl:with-param>
						</xsl:call-template>
					</table>
					<br />

					<b><span class="mod-form-title"><xsl:value-of select="@CONTACT-INFORMATION"/></span></b>

					<div class="mod-form-hr" style="height:1px;"><span></span></div>

					<table cellpadding="5" cellspacing="0" width="100%" class="mod-form" style="margin: 10px 0; border: 0;">
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@FIRST-NAME"/></xsl:with-param>
							<xsl:with-param name="name">first_name</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@FIRST-NAME"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@LAST-NAME"/></xsl:with-param>
							<xsl:with-param name="name">last_name</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@LAST-NAME"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@COMPANY"/></xsl:with-param>
							<xsl:with-param name="name">company</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@COMPANY"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@PHONE"/></xsl:with-param>
							<xsl:with-param name="name">phone_number</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@PHONE-NUMBER"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@ADDRESS1"/></xsl:with-param>
							<xsl:with-param name="name">address1</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@ADDRESS1"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@ADDRESS2"/></xsl:with-param>
							<xsl:with-param name="name">address2</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@ADDRESS2"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@COUNTRY"/></xsl:with-param>
							<xsl:with-param name="name">country</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@COUNTRY"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@CITY"/></xsl:with-param>
							<xsl:with-param name="name">city</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@CITY"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@STATE"/></xsl:with-param>
							<xsl:with-param name="name">state</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@STATE"/></xsl:with-param>
						</xsl:call-template>
						<xsl:call-template name="FORM-FIELD">
							<xsl:with-param name="title"><xsl:value-of select="@ZIP"/></xsl:with-param>
							<xsl:with-param name="name">zip</xsl:with-param>
							<xsl:with-param name="value"><xsl:value-of select="DATA/@ZIP"/></xsl:with-param>
						</xsl:call-template>
					</table>
					<xsl:apply-templates select="INPUT[TYPE='CAPTCHA']"/>

					<br />

					<div align="right" style="margin-top: 10px;">
						<input type="submit" name="register" class="mod-form-button" onclick="validateForm(); return false;" >
							<xsl:attribute name="value"><xsl:value-of select="@SAVE-BUTTON-TITLE"/></xsl:attribute>
						</input>
						<input type="button" name="Cancel" class="mod-form-button">
							<xsl:attribute name="value"><xsl:value-of select="@CANCEL"/></xsl:attribute>
							<xsl:attribute name="onclick">document.location.href="<xsl:value-of select="@CANCEL-ACTION"/>"; return false;</xsl:attribute>
						</input>
					</div>
				</td>
			</tr>
		</table>
	</td>
</tr>
</table>

</form>

</xsl:template>

<xsl:template name="FORM-FIELD">
<xsl:param name="title"/>
<xsl:param name="name"/>
<xsl:param name="value"/>
<xsl:param name="disabled"/>
<xsl:param name="isPassword" select="false"/>
<xsl:param name="required" select="false"/>
	<tr>
		<td width="30%">
			<xsl:value-of select="$title"/>
		  	<xsl:if test="$required='true'">
		  		&#160;<span class="requiered">
		  		<xsl:attribute name="id"><xsl:value-of select="$name"/>_asterix</xsl:attribute>
		  		*</span>
		  	</xsl:if>
		 </td>
		<td width="70%">
			<input class="mod-input" style="width:100%;" maxlength="255" >
				<xsl:attribute name="id"><xsl:value-of select="$name"/></xsl:attribute>
				<xsl:attribute name="name"><xsl:value-of select="$name"/></xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="$value"/></xsl:attribute>
				<xsl:if test="$disabled='true'"><xsl:attribute name="disabled">true</xsl:attribute></xsl:if>
				<xsl:if test="$isPassword='true'"><xsl:attribute name="type">password</xsl:attribute></xsl:if>
			</input>
		</td>
	</tr>
</xsl:template>

</xsl:stylesheet>