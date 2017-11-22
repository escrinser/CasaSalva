<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="FORUM-SEARCH">

<form name="searchForm" action="{@URL}" method="get" style="margin: 0;">

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="mod-search"  style="margin: 10px 0;">
<tr>
<td align="left">
<table cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td align="left" style="padding: 5px 0px;">
			<input name="isChanged" type="hidden" id="isChanged">
			<xsl:choose>
				<xsl:when test="not(@IS-CHANGED)">
					<xsl:attribute name="value">0</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="value"><xsl:value-of select="@IS-CHANGED"/></xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			</input>
			<input name="search" id="search" class="mod-input" style="width:150px; margin: 0 10px;">
			<xsl:choose>
				<xsl:when test="@IS-CHANGED='1'">
					<xsl:attribute name="value"><xsl:value-of select="@SEARCH"/></xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="onclick">
						javascript: var isChanged = document.getElementById('isChanged'); if (isChanged.value==0) {var search = document.getElementById('search'); search.value='';isChanged.value=1;}
					</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="LOCALE/SEARCH"/></xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			</input>
			
			<select name="searchType" class="mod-input" style="width: 167px; margin: 0 10px;">
				<option value="1">
					<xsl:if test="@TYPE='1'">
						<xsl:attribute name="selected">true</xsl:attribute>
					</xsl:if>	
					<xsl:value-of select="LOCALE/SEARCH-ITEM-1"/>
				</option>
				<option value="2">
					<xsl:if test="@TYPE='2'">
						<xsl:attribute name="selected">true</xsl:attribute>
					</xsl:if>	
					<xsl:value-of select="LOCALE/SEARCH-ITEM-2"/>
				</option>
			</select>
		</td>
		<td  align="left" style="padding: 5px 0px;">
			<a href="#">
				<xsl:attribute name="onclick">
					javascript: var isChanged = document.getElementById('isChanged'); if (isChanged.value==0) {var search = document.getElementById('search'); search.value='';} document.searchForm.submit();
				</xsl:attribute>
				<img border="0">
					<xsl:attribute name="src"><xsl:value-of select="$img_url"/>btn_search_bg.gif</xsl:attribute>
				</img>
			</a>
		</td>
	</tr>
</table>
</td>
</tr>
</table>

</form>
</xsl:template>

</xsl:stylesheet>