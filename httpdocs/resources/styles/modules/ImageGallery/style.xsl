<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="IMAGE-GALLERY-CONTENT">	
	<xsl:call-template name="MODULE-CSS"/>
	<xsl:apply-templates select="LIST" />
	<xsl:apply-templates select="IMAGE-GALLERY-IMAGE-PREVIEW" />
</xsl:template>

<xsl:template match="LIST[@TYPE='MAIN']">
	<table border="0" style="width:100%;">
		<tr>
			<td>
				<xsl:apply-templates select="CONTENT" mode="main"/>
			</td>
		</tr>
		<tr>
			<td>
				<xsl:apply-templates select="PAGING" />		
			</td>
		</tr>
	</table>
</xsl:template>


<xsl:template match="LIST[@TYPE='THUMBNAIL-LIST']">
	<table border="0" style="width:100%;">
		<tr>
			<td>
				<xsl:apply-templates select="CONTENT" mode="thumbnailList"/>
			</td>
		</tr>
		<tr>
			<td>
				<xsl:apply-templates select="PAGING" />		
			</td>
		</tr>
	</table>	
</xsl:template>

<xsl:template match="CONTENT" mode="main">
	<xsl:apply-templates select="SEARCH-FORM" />
	<xsl:apply-templates select="IMAGE-GALLERY-CATEGORY" />
	<table border="0" style="width:100%;" cellspacing="0" cellpadding="0">	 
		<tr>
			<td valign="top">
				<xsl:apply-templates select="IMAGE-GALLERY-THUMBNAIL" />
			</td>	
		</tr>	
	</table>	
</xsl:template>

<xsl:template match="CONTENT" mode="thumbnailList">
	<xsl:apply-templates select="SEARCH-FORM" />
	<xsl:apply-templates select="IMAGE-GALLERY-DESCRIPTION" />
	<xsl:apply-templates select="IMAGE-GALLERY-THUMBNAIL" />
</xsl:template>

<xsl:template match="IMAGE-GALLERY-CATEGORY">
	<table border="0" class="mod-comment-body" cellspacing="10" style="margin-bottom:10px; width:100%;">
		<tr>
			<xsl:if test="@IMAGE-SRC!=''">
				<td valign="top">
					<img>
						<xsl:attribute name="src"><xsl:value-of select="@IMAGE-SRC"/></xsl:attribute>
						<xsl:attribute name="alt"><xsl:value-of select="@TITLE"/></xsl:attribute>
					</img>
				</td>
			</xsl:if>			
			<td style="vertical-align: top; width: 100%">
				<div style="margin-bottom:10px;">
					<b>
						<a class="mod-category-body-a" style="font-size: 10pt;">
							<xsl:attribute name="href"><xsl:value-of select="@HREF"/></xsl:attribute>							
							<xsl:value-of select="@TITLE"/>							
						</a>				
					</b>	
				</div>
				<xsl:value-of select="@DESCRIPTION" disable-output-escaping="yes"/>				
			</td>	
		</tr>
	</table>
</xsl:template>


<xsl:template name="IMAGE-GALLERY-IMAGE-PREVIEW-NAVIGATION-BLOCK">
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="mod-item-body" style="height: 25px;">
	<tr>
	
		<td align="left" style="padding-left: 10px; width: 33%;">				
			<xsl:if test="@LINK-PREVIOUS-PAGE-URL">
				<a class="mod-item-body-a">
					<xsl:attribute name="href"><xsl:value-of select="@LINK-PREVIOUS-PAGE-URL"/></xsl:attribute>
					&lt;&lt; <xsl:value-of select="@LINK-PREVIOUS-PAGE-TITLE" disable-output-escaping="yes"/>
				</a>
			</xsl:if>
		</td>
		
		<td align="center" style="width: 33%;">
			<a class="mod-item-body-a">
				<xsl:attribute name="href"><xsl:value-of select="@LINK-ALL-PAGE-URL"/></xsl:attribute>
				<xsl:value-of select="@LINK-ALL-PAGE-TITLE" disable-output-escaping="yes"/>
			</a>
		</td>

		<td align="right" style="padding-right: 10px; width: 33%;">
			<xsl:if test="@LINK-NEXT-PAGE-URL">					
				<a class="mod-item-body-a">
					<xsl:attribute name="href"><xsl:value-of select="@LINK-NEXT-PAGE-URL"/></xsl:attribute>			
					<xsl:value-of select="@LINK-NEXT-PAGE-TITLE" disable-output-escaping="yes"/> &gt;&gt;
				</a>
			</xsl:if>							
		</td>
		
	</tr>	
</table>	
</xsl:template>

<xsl:template match="IMAGE-GALLERY-IMAGE-PREVIEW">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" style="padding: 10px; margin-top: 10px;">
		<tr>
			<td style="padding-bottom: 10px;">
				<xsl:call-template name="IMAGE-GALLERY-IMAGE-PREVIEW-NAVIGATION-BLOCK"/>
			</td>	
		</tr>	
		<tr>
			<td>
				<table cellpadding="0" cellspacing="0" border="0" width="100%" style="" class="mod-comment-body">
					<tr>
						<td align="center" colspan="2">
							<script src="resources/js/modules/ImageGallery/functions.js?uid=1">void(1);</script>
							<a href="#" onclick="ImageGalleryOpenImage('{@FULL-IMAGE-SRC}', '{@ESCAPED-TITLE}', '{@FULL-IMAGE-WIDTH}', '{@FULL-IMAGE-HEIGHT}'); return false;">
								<img border="0" style="margin-top: 10px; margin-bottom: 10px;">
									<xsl:attribute name="alt"><xsl:value-of select="@TITLE"/></xsl:attribute>
									<xsl:attribute name="src"><xsl:value-of select="@SRC"/></xsl:attribute>
								</img>
							</a>	
						</td>
					</tr>					
					<tr>				
						<td style="padding: 0 20px 10px 10px; width:20%;" valign="top">						
							<div class="mod-comment-body-title" style="margin-bottom: 5px;">
								<b>						
									<xsl:value-of select="@TITLE"/>
								</b>
							</div>
							<xsl:value-of select="@DATE-TIME" disable-output-escaping="yes"/>
						</td>
						<td style="padding: 0 10px 10px 10px;" valign="top">
							<xsl:value-of select="@DESCRIPTION" disable-output-escaping="yes"/>
						</td>
					</tr>	
				</table>
			</td>
		</tr>
		<tr>
			<td  style="padding-top: 10px;">		
				<xsl:call-template name="IMAGE-GALLERY-IMAGE-PREVIEW-NAVIGATION-BLOCK"/>
			</td>	
		</tr>
	</table>
</xsl:template>


<xsl:template match="IMAGE-GALLERY-THUMBNAIL">
	<div>
		<xsl:attribute name="style">float: left; margin-right: 10px; margin-bottom: 10px; height:<xsl:value-of select="@MAX-HEIGHT-THUMBNAIL + 100"/>px;</xsl:attribute>
		<table border="0" cellspacing="0" class="mod-comment-body">
			<xsl:attribute name="style">height:<xsl:value-of select="@MAX-HEIGHT-THUMBNAIL + 80"/>px;</xsl:attribute>
			<tr>
				<td style="height:100%; padding:10px; text-align: center;">
					<a>
						<xsl:attribute name="href"><xsl:value-of select="@HREF"/></xsl:attribute>
						<img border="0">
							<xsl:attribute name="src"><xsl:value-of select="@SRC"/></xsl:attribute>
							<xsl:attribute name="alt"><xsl:value-of select="@TITLE"/></xsl:attribute>					
						</img>
					</a>
				</td>
			</tr>	
			<tr>
				<td style="padding: 5px 10px; vertical-align: middle; text-align: center;">
					<div style="padding: 0px; margin: 0px; overflow: hidden; height: 40px; width: {@MAX-WIDTH-THUMBNAIL}px;">
						<a title="{@TITLE}" class="mod-item-body-a" href="{@HREF}">
							<xsl:value-of select="@TITLE"/>
						</a>
					</div>
				</td>	
			</tr>
		</table>
	</div>
</xsl:template>

<xsl:template match="IMAGE-GALLERY-DESCRIPTION">
	<table style="width:100%; margin-bottom:10px;" border="0" class="mod-item-body">
		<tr>
			<td style="padding: 5px 10px;">
				<xsl:value-of select="@DESCRIPTION" disable-output-escaping="yes"/>
			</td>
		</tr>
		<tr>
			<td style="padding: 5px 10px;">
				<a>
					<xsl:attribute name="href"><xsl:value-of select="@ALL-CATEGORIES-URL"/></xsl:attribute>							
					&lt;&lt; <xsl:value-of select="@ALL-CATEGORIES-TITLE" disable-output-escaping="yes"/>
				</a>
			</td>
		</tr>	
	</table>	
</xsl:template>


<xsl:template match="SEARCH-FORM">
<form name="searchForm" action="" style="margin: 0;" method="GET">
<input type="hidden" name="view" value="thumbnailList"/>

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="mod-search" style="margin: 10px 0; height: 40px;">
<tr>
<td align="left">
<table cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td align="left" style="padding: 5px 0px;">
			<input name="q"  type="text" class="mod-input" style="width:150px; margin: 0 10px;">
			<xsl:choose>
				<xsl:when test="@VALUE!=''">
					<xsl:attribute name="value"><xsl:value-of select="@VALUE"/></xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="value"><xsl:value-of select="@TITLE"/></xsl:attribute>
					<xsl:attribute name="onclick">javascript: this.value='';</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			</input> 
			<span style="padding-left:10px; padding-right:10px;"><xsl:apply-templates select="INPUT"/></span>
		</td>
		<td  align="left" style="padding: 5px 0px;">
			<a href="#" onclick="javascript: document.searchForm.submit();">
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