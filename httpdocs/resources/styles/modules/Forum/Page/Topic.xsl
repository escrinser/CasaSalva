<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LIST">
<xsl:call-template name="MODULE-CSS"/>
<xsl:call-template name="FORUM-SEARCH"/>


<script type="text/javascript">
	function setAction(action, id) {
		var inputAction = document.getElementById('action');
		inputAction.value = action;
	
		var inputId = document.getElementById('id');
		inputId.value = id;

		var form = document.getElementById('replyForm');
		form.submit();
	}
</script>

<div>
	<a href="{@URL}"><xsl:value-of select="LOCALE/FORUM"/></a>

	<xsl:if test="CATEGORY">
		&#160;&gt;&#160;
		<a href="{@URL}?category={CATEGORY/@ID}"><xsl:value-of select="CATEGORY/."/></a>
	</xsl:if>

	&#160;&gt;&#160;
	<xsl:value-of select="TOPIC/SUBJECT"/>
</div>
<br/>

<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; margin-top: 10px;">
<!-- tr>
	<td class="mod-comment-header" style="padding: 5px 10px;">
		<div style="float:left;"><xsl:value-of select="TOPIC/AUTHOR"/></div>
		<div style="float:right;"><xsl:value-of select="TOPIC/CREATED"/></div>
	</td>
</tr -->
<tr>
	<td class="mod-comment-body" style="padding: 5px 10px;">
		<xsl:apply-templates select="TOPIC/CONTENT"/>
	</td>
</tr>
</table>

<xsl:apply-templates select="ROW" />

<br/>

<xsl:apply-templates select="PAGING"/>


<form name="replyForm" id="replyForm" action="{@URL}?topic={TOPIC/@ID}&amp;category={CATEGORY/@ID}" method="POST" style="margin: 0;">
	<input type="hidden" name="action" id="action" value="{COMMENT-FORM/@ACTION}"/>
	<input type="hidden" name="id" id="id" value="{COMMENT-FORM/@ID}"/>
	<table cellpadding="10" cellspacing="0" border="0" width="100%" class="mod-form" style="margin: 10px 0;">
		<tr>
			<td colspan="2" class="mod-form-title"><b><xsl:value-of select="LOCALE/SUBMIT-REPLY"/></b></td>
		</tr>
		<tr>
			<td colspan="2" style="padding: 0 10px;">
				<div class="mod-form-hr" style="height:1px;"><span></span></div>
			</td>
		</tr>
		<tr>
			<td width="100%">
				<xsl:value-of select="LOCALE/NAME"/> <span id="name_asterix" class="requiered">*</span><br/>
				<input name="author" class="mod-input" style="width: 100%" value="{COMMENT-FORM/AUTHOR/.}"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<xsl:value-of select="LOCALE/COMMENT"/> <span id="name_asterix" class="requiered">*</span><br/>
				<textarea name="comment" style="width: 100%; height: 87px;"><xsl:value-of select="COMMENT-FORM/COMMENT/." /></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<xsl:apply-templates select="COMMENT-FORM/INPUT[TYPE='CAPTCHA']"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="{LOCALE/SUBMIT/.}" class="mod-form-button"/>
			</td>
		</tr>
	</table>
</form>
</xsl:template>

<xsl:template match="LIST/ROW">
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; margin-top: 10px;">
	<tr>
		<td class="mod-comment-header" style="padding: 5px 10px;">
			<div style="float:left;"><xsl:value-of select="AUTHOR/."/></div>
			<div style="float:right;"><xsl:value-of select="CREATED/."/></div>
		</td>
	</tr>
	<tr>
		<td class="mod-comment-body" style="padding: 5px 10px;">
			<!-- div class="mod-comment-body-title" style="margin-bottom: 10px;"><b><xsl:value-of select="../LOCALE/RE/."/>: <xsl:value-of select="../TOPIC/."/></b></div -->
			<xsl:apply-templates select="COMMENT"/>
			<xsl:if test="@IS-EDIT='1'">
				<div align="right">
					<a class="mod-item-body-a-strong" href="javascript: void(0);" onclick="javascript: setAction('loadMessage', '{ID}');"><xsl:value-of select="/LIST/LOCALE/EDIT"/></a>&#160;
					<a class="mod-item-body-a-strong" href="javascript: void(0);" onclick="javascript: if (confirm('{/LIST/LOCALE/CONFIRMDELMESSAGE}')) setAction('deleteMessage', '{ID}');"><xsl:value-of select="/LIST/LOCALE/DELETE"/></a>
				</div>
			</xsl:if>
		</td>
	</tr>
</table>
</xsl:template>

<xsl:template match="COMMENT">
	<xsl:value-of select="." disable-output-escaping="yes"/>
</xsl:template>

<xsl:template match="CONTENT">
	<xsl:value-of select="." disable-output-escaping="yes"/>
</xsl:template>

</xsl:stylesheet>