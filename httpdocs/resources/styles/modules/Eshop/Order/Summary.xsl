<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="ESHOP-PAGE">
	<xsl:call-template name="MODULE-CSS"/>
	<div style="height: 10px;"><span></span></div>
	<xsl:apply-templates select="CART-SUMMARY"/>
	<div style="height: 10px;"><span></span></div>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="50%" style="padding-right: 5px; height: 100%;">
				<xsl:apply-templates select="CONTACT-INFORMATION-SUMMARY"/>
			</td>
			<td width="50%" style="padding-left: 5px; height: 100%;" valign="top">
				<xsl:apply-templates select="PAYMENT-SYSTEM-SUMMARY"/>
			</td>
		</tr>
	</table>
	<div style="height: 10px;"><span></span></div>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<xsl:apply-templates select="TERMS-OF-SERVICE"/>
			</td>
		</tr>
	</table>
	<div style="height: 10px;"><span></span></div>
	<xsl:apply-templates select="@PROCESS-IN-NEW-WINDOW"/>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td align="right">
				<input id="backButton" class="mod-button" style="margin-left:10px;" value="{/ESHOP-PAGE/LOCALE/BACK}" type="button">
					<xsl:attribute name="onclick">document.location.href= "?<xsl:value-of select="@ACTION-VARIABLE"/>=&amp;<xsl:value-of select="@VIEW-VARIABLE"/>=orderInfoPage";return false;</xsl:attribute>
				</input>
				<input id="nextButton" class="mod-button" style="margin-left:10px;" value="{/ESHOP-PAGE/LOCALE/CONTINUE}" type="button">
					<xsl:attribute name="onclick">processForm();return false;</xsl:attribute>
				</input>
			</td>
		</tr>
	</table>
	<script type="text/javascript">
		function processForm() {
			var form = document.getElementById('hiddenForm');
			if (null == form) {
				document.location.href= "?<xsl:value-of select="@ACTION-VARIABLE"/>=checkout&amp;<xsl:value-of select="@VIEW-VARIABLE"/>=finishPage";
			} else {
				form.submit();
				document.location.href= "?<xsl:value-of select="@VIEW-VARIABLE"/>=finishPage";
			}
		}
		function UpdateNextButton() {
			var checkbox = document.getElementById('acceptanceCheckbox');
			var button = document.getElementById('nextButton');
			if (checkbox != null &amp;&amp; button != null) {
				button.disabled = !checkbox.checked;
			}
		}
		UpdateNextButton();
	</script>
</xsl:template>

<xsl:template match="@PROCESS-IN-NEW-WINDOW">
	<form method="POST" target="_blank" name="hidden" id="hiddenForm">
		<xsl:attribute name="action"><xsl:value-of select="@ACTION"/></xsl:attribute>
		<input type="hidden" name="{../@ACTION-VARIABLE}" value="checkout"/>
		<input type="hidden" name="{../@VIEW-VARIABLE}" value="{.}"/>
	</form>
</xsl:template>

<xsl:template match="CART-SUMMARY">
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse;">
		<tr>
			<td width="50%" style="padding: 5px 10px;" class="mod-item-header"><b><xsl:value-of select="/ESHOP-PAGE/LOCALE/CART-PRODUCT-NAME"/></b></td>
			<td width="20%" align="right" style="padding: 5px 10px;" class="mod-item-header"><b><xsl:value-of select="/ESHOP-PAGE/LOCALE/CART-PRICE-PER-ITEM"/></b></td>
			<td width="10%" align="center" style="padding: 5px 10px;" class="mod-item-header"><b><xsl:value-of select="/ESHOP-PAGE/LOCALE/QUANTITY"/></b></td>
			<td width="20%" align="right" style="padding: 5px 10px;" class="mod-item-header"><b><xsl:value-of select="/ESHOP-PAGE/LOCALE/CART-PRODUCT-SUBTOTAL"/></b></td>
		</tr>
		<xsl:apply-templates select="CART-ITEM" mode="summary"/>

		<xsl:if test="SHIPPING-METHOD/@NAME">
		<tr>
			<td width="60%" style="border-right-width: 0px; padding: 5px 10px;" class="mod-info-footer"><xsl:value-of select="SHIPPING-METHOD/@NAME"/></td>
			<td colspan="3" width="40%" align="right" style="padding: 5px 10px; border-left-width: 0px;" class="mod-info-footer"><xsl:value-of select="SHIPPING-METHOD/@COST"/></td>
		</tr>
		</xsl:if>

		<tr>
			<td style="padding: 5px 10px; border-right-width: 0px;" class="mod-info-footer">
				<a class="mod-info-footer-a">
					<xsl:attribute name="href">?<xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/>=cartPage</xsl:attribute>
					<xsl:value-of select="/ESHOP-PAGE/LOCALE/EDIT-CART-LINK"/>
				</a>
			</td>
			<td colspan="3" style="padding: 5px 10px; border-left-width: 0px;" class="mod-item-footer" align="right">
				<b><xsl:value-of select="/ESHOP-PAGE/LOCALE/TOTAL"/></b>:&#160;<b><xsl:value-of select="@TOTAL"/></b>
			</td>
		</tr>

</table>
</xsl:template>

<xsl:template match="CART-ITEM" mode="summary">
<tr>
	<td style="padding: 5px 10px;" class="mod-item-body">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr>
			<td class="color_text"><xsl:value-of select="@NAME"/></td>
		</tr>
		<xsl:if test="COLOR">
		<tr>
			<td class="color_text">
				<xsl:value-of select="/ESHOP-PAGE/LOCALE/COLOR"/>:&#160;<xsl:value-of select="COLOR/@NAME"/>
			</td>
		</tr>
		</xsl:if>
		<xsl:if test="OPTIONS">
		<tr>
			<td class="color_text">
				<xsl:apply-templates select="OPTIONS"/>
			</td>
		</tr>
		</xsl:if>
		</table>
	</td>
	<td align="right" style="padding: 5px 10px;" class="mod-item-body"><xsl:value-of select="@PRICE-PER-ITEM"/></td>
	<td style="padding: 5px 10px;" class="mod-item-body" align="center"><xsl:value-of select="@QUANTITY"/></td>
	<td align="right" style="padding: 5px 10px;" class="mod-item-body"><xsl:value-of select="@SUBTOTAL"/></td>
</tr>
</xsl:template>

<xsl:template match="OPTIONS/ITEM">
<xsl:value-of select="@NAME"/>: <xsl:value-of select="@VALUE"/>
<xsl:if test="position()!=last()">,</xsl:if>
</xsl:template>

<xsl:template match="TERMS-OF-SERVICE">
	<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; height: 100%;">
		<tr>
			<td style="padding: 5px 10px; height: 25px;" class="mod-terms-of-service-header">
				<xsl:value-of select="@TITLE"/>
			</td>
		</tr>
		<tr>
			<td style="padding: 5px 10px;" class="mod-terms-of-service-body">
				<div style="overflow: auto; width: 100%; height: 150px;">
					<xsl:value-of select="." disable-output-escaping="yes"/>
				</div>
			</td>
		</tr>
		<tr>
			<td style="padding: 5px 10px;">
				<table cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td style="padding-right: 7px;">
							<input type="checkbox" name="acceptanceCheckbox" id="acceptanceCheckbox" class="form_input" style="margin: 0;" onclick="UpdateNextButton();"/>
						</td>
						<td class="mod-terms-of-service-footer" style="border-width: 0px; white-space: nowrap;">
							<label style="width: 100%;" for="acceptanceCheckbox">
								<xsl:value-of select="@ACCEPTANCE-LABEL"/>
							</label>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</xsl:template>

</xsl:stylesheet>