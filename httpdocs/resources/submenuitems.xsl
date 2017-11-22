<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:output method="html" indent="yes" encoding="utf-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"/>
<xsl:strip-space elements="*"/>
<xsl:include href="buttons.xsl"/>

<xsl:template match="LAYOUT">
	<xsl:variable name="cID" select="@ID"/>
	<HTML>
<!-- personal-018 -->
    <head>
		<title><xsl:value-of select="@SITE-TITLE" disable-output-escaping="yes"/> - <xsl:value-of select="@TITLE" disable-output-escaping="yes"/></title>
		<xsl:apply-templates select="META-TAGS"/>
		<link href="css/styles.css" rel="stylesheet" type="text/css"/>
	</head>
	<BODY MARGINHEIGHT="0" MARGINWIDTH="0" TOPMARGIN="0" RIGHTMARGIN="0" BOTTOMMARGIN="0" LEFTMARGIN="0">	
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="52" background="images/xsk_02.jpg">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
      		<tr>
        		<td height="52" align="center" style="background-image: url(images/htop.jpg); background-repeat: no-repeat; background-position: right bottom; padding-right: 30px; padding-left: 30px;">
					<table border="0" cellspacing="0" cellpadding="0">
		          		<tr>
								<!-- MENU -->
				 				<xsl:call-template name="TOP-MENU"/>
								<!-- END MENU -->
		          		</tr>
		        	</table>
				</td>
			</tr>
		</table>
	</td>
  </tr>
  <tr>
    <td height="254" valign="top" background="images/xsk_10.jpg">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
      		<tr>
        		<td width="37" align="left" valign="top"><img src="images/xsk_05.jpg" width="37" height="254" alt="" /></td>
        		<td width="100%" background="images/xsk_06.jpg">
					<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
          				<tr>
            				<td height="254" align="left" valign="bottom" style="background-image: url(images/header.jpg); background-repeat: no-repeat; background-position: right bottom; padding-right: 25px; padding-left: 25px;">
								<div style="width: 160px;">
									<table cellpadding="0" cellspacing="0" border="0">
										<tr valign="bottom">
											<td class="text-header"><xsl:value-of select="@TITLE" disable-output-escaping="yes"/></td>
											<td style="padding-left: 5px;"><img src="images/xsk_16.jpg" width="24" height="22" alt="" /></td>
								  		</tr>
									</table>
								</div>
								<br/>
							</td>
          				</tr>
        			</table>
				</td>
		        <td width="230" valign="middle" style="background-image: url(images/hleft.jpg); background-repeat: no-repeat; background-position: left bottom; padding-right: 15px; padding-left: 15px;">
					<!--  LOGO -->
				  	<table width="200" border="0" cellspacing="0" cellpadding="0">
		            	<tr>
		              		<td align="center"><a href="./"><img src="images/{LOGO/@NAME}" border="0" alt=""/></a></td>
		            	</tr>
			            <tr>
			              <td align="center" class="company"><xsl:value-of select="COMPANY-INFO/NAME" disable-output-escaping="yes"/></td>
			            </tr>
			            <tr>
			              <td align="center" class="slogan"><xsl:value-of select="COMPANY-INFO/SLOGAN" disable-output-escaping="yes"/></td>
			            </tr>
		          	</table>
					  <!-- END LOGO -->
					  <table width="200" border="0" cellspacing="0" cellpadding="0">
			          <tr>
			            <td><img src="images/spacer.gif" width="200" height="10" /></td>
			          </tr>
			        </table>
				</td>
      		</tr>
    	</table>
  	</td>
  </tr>
  <tr>
  	<td valign="top" height="100%">
		<table border="0" cellspacing="0" cellpadding="0" style="width: 100%; height: 100%;">
      		<tr>
        		<td width="37" valign="bottom" background="images/xsk_11.jpg"><img src="images/xsk_14.jpg" width="37" height="364" alt="" /></td>
        		<td width="100%" valign="top" bgcolor="#FFFFFF" style="padding-right: 25px; padding-left: 25px;">
					<table width="100%">
						<tr>
							<td name="SB_stretch" class="pageContent">
								<xsl:apply-templates select="PAGE-CONTENT"/>
							</td>
						</tr>
					</table>
			<!-- END CONTENT -->
				</td>
        		<td width="228" valign="top" background="images/xsk_19.jpg">
					<table width="228" border="0" cellspacing="0" cellpadding="0">
          				<tr>
            				<td height="362" align="center" valign="top" style="background-image: url(images/xsk_13.jpg); background-repeat: no-repeat; background-position: left top;">
								<br/>
								<!-- SUBMENU -->
								<table width="176" border="0" cellspacing="0" cellpadding="0">
									<xsl:call-template name="SUB-MENU"><xsl:with-param name="pageID" select="@ID"/></xsl:call-template>
							    </table>
								<!-- END SUBMENU -->
							</td>
          				</tr>
				        <tr>
				        	<td><img src="images/spacer.gif" width="230" height="8" /></td>
				        </tr>
        			</table>
				</td>
      		</tr>
    	</table>
	</td>
  </tr>
  <tr>
    <td valign="top" height="47">
		<table width="100%"  border="0" cellspacing="0" cellpadding="0">
      		<tr>
		        <td width="37"><img src="images/xsk_21.jpg" width="37" height="47" alt="" /></td>
		        <td width="100%" align="left" background="images/xsk_23.jpg"><img src="images/xsk_22.jpg" width="511" height="47" alt="" /></td>
		        <td width="228" bgcolor="#E6E6E6"><img src="images/spacer.gif" width="230" height="30" /></td>
		    </tr>
		</table>
	</td>
  </tr>
  <tr>
    <td height="1" align="center" bgcolor="#E6E6E6" style="padding-right: 30px; padding-left: 30px;">
		<!-- BOOTTOM MENU -->
		<table border="0" cellspacing="0" cellpadding="0">
      		<tr>
	   			<xsl:call-template name="BOTTOM-MENU"/>
      		</tr>
    	</table>
		<!-- END BOOTTOM MENU -->
	</td>
  </tr>
  <tr>
    <td height="10" align="center" bgcolor="#E6E6E6" class="footer">
		<br/>
		<!-- FOOTER -->
		<xsl:value-of select="COPYRIGHT" disable-output-escaping="yes"/>
		<!-- END FOOTER -->
		<div style="width:0px; height:10px;"><span></span></div>
	</td>
  </tr>
</table>
	<!--sw_sb_ch-->
	</BODY>

	</HTML>
</xsl:template>


<xsl:template name="TOP-MENU">
		<xsl:apply-templates select="MENU" mode="top"/>	
</xsl:template>


<xsl:template name="SUB-MENU">
	<xsl:param name="pageID"/>
	<xsl:choose>
		<xsl:when test="//MENU/MENU-ITEM[@ID = $pageID]/MENU-ITEM">
			<xsl:apply-templates select="//MENU/MENU-ITEM[@ID = $pageID]/MENU-ITEM" mode="sub"/>
		</xsl:when>
		<xsl:when test="//MENU/MENU-ITEM/MENU-ITEM[@ID = $pageID]">
			<xsl:variable name="parentID" select="//MENU/MENU-ITEM/MENU-ITEM[@ID = $pageID]/../@ID"/>
			<xsl:apply-templates select="//MENU/MENU-ITEM[@ID=$parentID]/MENU-ITEM" mode="sub"/>
		</xsl:when>
	</xsl:choose>
</xsl:template>
	
<xsl:template match="MENU-ITEM" mode="sub">
	<xsl:choose>
		<xsl:when test="@ID=/LAYOUT/@ID" >
              <tr>
                <td width="152" align="left" class="asubmenu"><xsl:value-of select="@TITLE" disable-output-escaping="yes"/></td>
                <td width="28"><img src="images/sub.gif" width="16" height="16" /></td>
              </tr>
		</xsl:when>
		<xsl:otherwise>
			<xsl:if test="../MENU-ITEM[@ID=/LAYOUT/@ID] or ../../MENU-ITEM[@ID=/LAYOUT/@ID]">
              <tr>
                <td width="152" align="left">
				   <a href="{@HREF}" class="submenu"><xsl:value-of select="@TITLE" disable-output-escaping="yes"/></a>
				</td>
                <td width="28"><img src="images/sub.gif" width="16" height="16" /></td>
              </tr>
			</xsl:if>
		</xsl:otherwise>
	</xsl:choose>
	<xsl:if test="position()!=last()">
              <tr>
                <td colspan="2" height="17"><img src="images/line.gif" width="176" height="1" /></td>
                </tr>
	</xsl:if>
</xsl:template>	

<xsl:template name="BOTTOM-MENU">   		
	<xsl:apply-templates select="MENU" mode="bottom"/>			
</xsl:template>

<xsl:template match="MENU" mode="bottom">
	<xsl:apply-templates select="MENU-ITEM"  mode="bottom"/>
</xsl:template>
		
<xsl:template match="MENU-ITEM"  mode="bottom">
	<xsl:choose>
       <!-- when vizited inside-->
       	<xsl:when test="MENU-ITEM[@ID=/LAYOUT/@ID] or @ID=/LAYOUT/@ID">
<td  align="center"><a href="{@HREF}" class="abmenu" id="abmenu"><xsl:value-of select="@TITLE" disable-output-escaping="yes"/></a></td>
           </xsl:when>
           <!-- when active-->
           
           <xsl:otherwise>
<td  align="center"><a href="{@HREF}" class="bmenu" id="bmenu{position()}"><xsl:value-of select="@TITLE" disable-output-escaping="yes"/></a></td>
           </xsl:otherwise>
       </xsl:choose>
  		<xsl:if test="position()!=last()">
	    <td><img src="images/xsk_26.jpg" width="29" height="11" alt="" /></td>
  		</xsl:if>
</xsl:template>
	
<xsl:template match="META-TAGS">
	<xsl:apply-templates mode="meta-tags"/>
</xsl:template>
	
<xsl:template match="*" mode="meta-tags">
	<meta name="{local-name(.)}"><xsl:attribute name="content"><xsl:value-of select="." disable-output-escaping="yes"/></xsl:attribute></meta>
</xsl:template>


<xsl:template match="PAGE-CONTENT">
	<xsl:comment> EDITABLE CONTENT </xsl:comment>
	<xsl:apply-templates mode="meta-tags"/>
</xsl:template>
	     	
</xsl:stylesheet>
