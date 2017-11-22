<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="FORM">
	<script src="resources/js/validator.js">void(1);</script>
	<script src="resources/js/utils.js">void(1);</script>

	<script language="javascript">
		<xsl:comment>
		function validateForm() {
			if (validateField('SB_Validator.notEmpty', 'name', '<xsl:value-of select="@EMPTY-NAME-ALERT"/>')
				&amp;&amp; validateField('SB_Validator.notEmpty', 'subject', '<xsl:value-of select="@EMPTY-SUBJECT-ALERT"/>')
				&amp;&amp; validateField('SB_Validator.notEmpty', 'comment', '<xsl:value-of select="@EMPTY-COMMENT-ALERT"/>')
			) {
				document.forms['commentForm'].submit();
				return true;
			} else {
				return false;
			}
		}
		//</xsl:comment>
	</script>
	<a name="add"></a>
	<form name="commentForm" method="post" style="margin: 0;">
		<input type="hidden" name="action" value="insert"/>
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
				<td width="50%">
					<xsl:value-of select="@NAME"/> <span id="name_asterix" class="requiered">*</span><br/>
					<input id="name" name="name" class="mod-input" style="width: 100%">
						<xsl:attribute name="value"><xsl:value-of select="@USER-NAME"/></xsl:attribute>
					</input>
				</td>
				<td width="50%">
					<xsl:value-of select="@SUBJECT"/> <span id="subject_asterix" class="requiered">*</span><br/>
					<input id="subject" name="subject" class="mod-input" style="width: 100%">
						<xsl:attribute name="value"><xsl:value-of select="@SUBJECT-VALUE"/></xsl:attribute>
					</input>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 0 10px;">
					<xsl:value-of select="INPUT[TYPE='WYSIWYG']/TITLE"/> <span class="requiered">*</span><br/>
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
						<xsl:attribute name="onclick">validateForm();</xsl:attribute>
					</input>
				</td>
			</tr>
		</table>
	</form>
</xsl:template>

</xsl:stylesheet>