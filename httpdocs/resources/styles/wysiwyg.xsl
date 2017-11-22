<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="INPUT[TYPE='WYSIWYG']">
		<!--<xsl:variable name="Wysiwyg">
			<xsl:text>Wysiwyg_</xsl:text>
			<xsl:value-of select="generate-id()"/>
		</xsl:variable>
		<xsl:variable name="WysiwygIniter">
			<xsl:value-of select="$Wysiwyg"/>
			<xsl:text>_control</xsl:text>
		</xsl:variable>
		<xsl:variable name="WysiwygControl">
			<xsl:value-of select="$Wysiwyg"/>
			<xsl:text>_control</xsl:text>
		</xsl:variable>-->
		<textarea id="{NAME}" name="{NAME}" class="form_input" style="height: 100px; width: 100%;">
			<xsl:value-of select="VALUE"/>
		</textarea>
		<!--<textarea id="{$WysiwygControl}" name="{NAME}" class="form_input" style="height: 100px; width: 100%;">
			<xsl:value-of select="VALUE"/>
		</textarea>
		<script type="text/javascript" src="resources/wysiwyg/fckeditor.js"></script>
		<script language="JavaScript" type="text/javascript">
		 	function <xsl:value-of select="$WysiwygIniter"/>() {
		 		<xsl:value-of select="$Wysiwyg"/>=new FCKeditor('<xsl:value-of select="$WysiwygControl"/>');
				<xsl:value-of select="$Wysiwyg"/>.ReplaceTextarea();
			}
			<xsl:value-of select="$Wysiwyg"/>=null;
			<xsl:value-of select="$WysiwygIniter"/>();
		</script>-->
	</xsl:template>
</xsl:stylesheet>