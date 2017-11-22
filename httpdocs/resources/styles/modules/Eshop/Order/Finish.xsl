<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="ESHOP-PAGE">
	<xsl:call-template name="MODULE-CSS"/>
	<br/>
	<xsl:call-template name="BACK-TO-CATALOGUE-LINK"/>
</xsl:template>

</xsl:stylesheet>