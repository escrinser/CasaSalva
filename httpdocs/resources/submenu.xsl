<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="html" indent="no"/>
	<xsl:strip-space elements="*"/>
	<xsl:include href="buttons.xsl"/>
	<xsl:include href="submenuitems.xsl"/>
	<xsl:template match="LAYOUT[@TYPE='moduleSubMenu']">
	    <xsl:param name="pageID"/>
	    <!--<xsl:apply-templates select="MENU-ITEM/MENU-ITEM" mode="sub"/>-->
	     <xsl:call-template name="SUB-MENU">
        	<xsl:with-param name="pageID" select="@ID"/>
    	    </xsl:call-template>
	</xsl:template>

</xsl:stylesheet>
