<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="ESHOP-PAGE">
		<xsl:apply-templates select="HIDDEN-FORM"/>
		<script type="text/javascript">
			function SubmitHiddenForm() {
				var form = document.getElementById('hiddenForm');
				if (form != null) {
					form.submit();
				}
			}
			SubmitHiddenForm();
		</script>
	</xsl:template>

	<xsl:template match="HIDDEN-FORM">
		<form method="POST" name="hidden" id="hiddenForm">
			<xsl:attribute name="action"><xsl:value-of select="@ACTION"/></xsl:attribute>
			<xsl:apply-templates select="HIDDEN-FORM-FIELD"/>
		</form>
	</xsl:template>

	<xsl:template match="HIDDEN-FORM-FIELD">
		<input type="hidden">
			<xsl:attribute name="name"><xsl:value-of select="@NAME"/></xsl:attribute>
			<xsl:attribute name="value"><xsl:value-of select="@VALUE"/></xsl:attribute>
		</input>
	</xsl:template>

</xsl:stylesheet>