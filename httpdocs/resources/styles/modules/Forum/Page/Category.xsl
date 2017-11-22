<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LIST">
	<xsl:call-template name="MODULE-CSS"/>
	<xsl:call-template name="FORUM-SEARCH"/>
	<div>
		<a href="{@URL}"><xsl:value-of select="LOCALE/FORUM"/></a>
		&#160;&gt;&#160;
		<xsl:value-of select="CATEGORY/@NAME"/>
	</div>
	<br/>

	<table cellpadding="10" cellspacing="0" border="0" width="100%" class="mod-form" style="margin: 10px 0;">
		<tr>
			<td class="mod-category-body" style="padding: 5px 10px;">
				<xsl:apply-templates select="CATEGORY/DESCRIPTION"/>
			</td>
		</tr>
	</table>

	<br/>

	<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse;">
		<xsl:if test="count(ROW) != 0">
		<tr>
			<td class="mod-category-header" style="padding: 5px 10px;">
				<b><xsl:value-of select="LOCALE/THREAD"/></b>
			</td>
			<td class="mod-category-header" style="padding: 5px 10px;">
				<b><xsl:value-of select="LOCALE/AUTHOR"/></b>
			</td>
			<td class="mod-category-header" style="padding: 5px 10px;">
				<b><xsl:value-of select="LOCALE/LAST-MESSAGE"/></b>
			</td>
			<td class="mod-category-header" style="padding: 5px 10px;">
				<b><xsl:value-of select="LOCALE/REPLIES"/></b>
			</td>
		</tr>
		</xsl:if>
		<xsl:apply-templates select="ROW" />
	</table>

	<br/>

	<xsl:apply-templates select="PAGING"/>

	<form name="add" action="{@URL}?category={CATEGORY/@ID}" method="POST" style="margin: 0;">
		<input type="hidden" name="action" value="addTopic"/>
		<table cellpadding="10" cellspacing="0" border="0" width="100%" class="mod-form" style="margin: 10px 0;">
			<tr>
				<td colspan="2" class="mod-form-title"><b><xsl:value-of select="LOCALE/ADD-THREAD"/></b></td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 0 10px;">
					<div class="mod-form-hr" style="height:1px;"><span></span></div>
				</td>
			</tr>
			<tr>
				<td width="50%">
					<xsl:value-of select="LOCALE/NAME"/> <span id="name_asterix" class="requiered">*</span><br/>
					<input name="author" class="mod-input" style="width: 100%" value="{TOPIC-FORM/AUTHOR/.}"/>
				</td>
				<td width="50%">
					<xsl:value-of select="LOCALE/SUBJECT"/> <span id="name_asterix" class="requiered">*</span><br/>
					<input name="subject" class="mod-input" style="width: 100%" value="{TOPIC-FORM/SUBJECT/.}"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<xsl:value-of select="LOCALE/COMMENT"/> <span id="name_asterix" class="requiered">*</span><br/>
					<textarea name="content" style="width: 100%; height: 87px;"><xsl:value-of select="TOPIC-FORM/CONTENT/." /></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<xsl:apply-templates select="TOPIC-FORM/INPUT[TYPE='CAPTCHA']"/>
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
<tr>
	<td class="mod-category-body" style="padding: 5px 10px;">
		<a href="{../@URL}?topic={ID/.}&amp;category={../CATEGORY/@ID}" class="mod-form-title"><xsl:value-of select="SUBJECT"/></a>
	</td>
	<td class="mod-category-body" style="padding: 5px 10px;"><xsl:value-of select="AUTHOR_NAME"/></td>
	<td class="mod-category-body" style="padding: 5px 10px;"><xsl:value-of select="LAST_MESSAGE_CREATED"/></td>
	<td align="right" class="mod-category-body" style="padding: 5px 10px;">
		<xsl:choose>
			<xsl:when test="MESSAGES_COUNT != ''"><xsl:value-of select="MESSAGES_COUNT"/></xsl:when>
			<xsl:otherwise>0</xsl:otherwise>
		</xsl:choose>
	</td>
</tr>
</xsl:template>

<xsl:template match="DESCRIPTION">
	<xsl:value-of select="." disable-output-escaping="yes"/>
</xsl:template>

</xsl:stylesheet>