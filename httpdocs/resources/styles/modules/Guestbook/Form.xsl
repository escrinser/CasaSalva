<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="FORM">
	<a name="add"></a>
	<script src="resources/js/validator.js">void(1);</script>
	<script src="resources/js/utils.js">void(1);</script>
	<script>
		<xsl:comment>
		function validateForm() {
			if (validateField('SB_Validator.notEmpty', 'author', '<xsl:value-of select="@EMPTY-NAME-ALERT"/>')
				&amp;&amp; extendedValidateField("SB_Validator.isMaxLength(document.getElementById('author').value, 255)", 'author', '<xsl:value-of select="@NAME-TOO-LONG-ALERT"/>')
				&amp;&amp; (
					document.getElementById('email').value.length ==0 || (
						validateField('SB_Validator.isEmail', 'email', '<xsl:value-of select="@NOT-VALID-EMAIL-ALERT"/>')
						&amp;&amp;
						extendedValidateField("SB_Validator.isMaxLength(document.getElementById('email').value, 255)", 'email', '<xsl:value-of select="@EMAIL-TOO-LONG-ALERT"/>')
					)
				)
				&amp;&amp; (
					document.getElementById('url').value.length ==0 || (
						validateField('SB_Validator.isHttpUrl', 'url', '<xsl:value-of select="@NOT-VALID-URL-ALERT"/>')
						&amp;&amp; extendedValidateField("SB_Validator.isMaxLength(document.getElementById('url').value, 255)", 'url', '<xsl:value-of select="@URL-TOO-LONG-ALERT"/>')
					)
				)
				&amp;&amp; validateField('SB_Validator.notEmpty', 'comment', '<xsl:value-of select="@EMPTY-COMMENT-ALERT"/>')
			) {
				document.forms['add'].submit();
				return true;
			} else {
				return false;
			}
		}
		</xsl:comment>
	</script>
	<form name="add" method="post" style="margin: 0;">
		<xsl:attribute name="action"><xsl:value-of select="@SUBMIT-URL"/></xsl:attribute>
		<input type="hidden" name="action">
			<xsl:attribute name="value"><xsl:value-of select="@ACTION"/></xsl:attribute>
		</input>
		<input type="hidden" name="id">
			<xsl:attribute name="value"><xsl:value-of select="@EDIT-ID"/></xsl:attribute>
		</input>
		<table cellpadding="10" cellspacing="0" border="0" width="100%" class="mod-form" style="margin: 10px 0;">
			<tr>
				<td colspan="2" class="mod-form-title"><b><xsl:value-of select="@TITLE"/></b></td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 0 10px;">
					<div class="mod-form-hr" style="height:1px;"><span></span></div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<xsl:value-of select="@AUTHOR"/> <span id="author_asterix" class="requiered">*</span><br/>
					<input id="author" name="author" class="mod-input" style="width: 100%" maxlength="255">
						<xsl:attribute name="value"><xsl:value-of select="@EDIT-AUTHOR"/></xsl:attribute>
					</input>
				</td>
			</tr>
			<tr>
				<td width="50%">
					<xsl:value-of select="@EMAIL"/><br/>
					<input id="email" name="email" class="mod-input" style="width: 100%" maxlength="255">
						<xsl:attribute name="value"><xsl:value-of select="@EDIT-EMAIL"/></xsl:attribute>
					</input>
				</td>
				<td width="50%">
					<xsl:value-of select="@URL"/><br/>
					<input id="url" name="url" class="mod-input" style="width: 100%" maxlength="255">
						<xsl:attribute name="value"><xsl:value-of select="@EDIT-URL"/></xsl:attribute>
					</input>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 0 10px;">
					<xsl:value-of select="INPUT[TYPE='WYSIWYG']/TITLE"/> <span id="comment_asterix" class="requiered">*</span><br/>
					<xsl:apply-templates select="INPUT[TYPE='WYSIWYG']"/>
					<!--<textarea style="width: 100%; height: 87px;"></textarea>-->
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<xsl:apply-templates select="INPUT[TYPE='CAPTCHA']"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="button" class="mod-form-button" name="addComment">
						<xsl:attribute name="value"><xsl:value-of select="@SUBMIT"/></xsl:attribute>
						<xsl:attribute name="onclick">return validateForm();</xsl:attribute>
					</input>
				</td>
			</tr>
		</table>
	</form>
</xsl:template>

</xsl:stylesheet>