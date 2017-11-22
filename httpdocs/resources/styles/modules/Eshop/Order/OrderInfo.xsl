<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="ESHOP-PAGE">

<xsl:call-template name="MODULE-CSS"/>

<script type="text/javascript" language="javascript" src="resources/js/modules/Eshop/paymentSystems.js">void(1);</script>

<form name="contactInfoForm" method="post">
<xsl:attribute name="action">?<xsl:value-of select="@VIEW-VARIABLE"/>=contactInfoPage</xsl:attribute>
<xsl:attribute name="onSubmit">if ('' == this.<xsl:value-of select="@VIEW-VARIABLE"/>.value) { this.<xsl:value-of select="@VIEW-VARIABLE"/>.value='summaryPage';return true; }</xsl:attribute>
<input type="hidden" value="contactInfoStoring">
	<xsl:attribute name="name"><xsl:value-of select="@ACTION-VARIABLE"/></xsl:attribute>
</input>
<input type="hidden">
	<xsl:attribute name="name"><xsl:value-of select="@VIEW-VARIABLE"/></xsl:attribute>
</input>

<table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin-top: 10px; border-collapse: collapse;">
	<tr>
		<td style="padding: 5px 10px;" class="mod-form">
			<table border="0" cellpadding="5" cellspacing="0" width="100%" id="paymentSystemTable">
				<tr>
					<td valign="top">
						<xsl:apply-templates select="CONTACT-INFORMATION-FORM"/>
					</td>
				</tr>
				<tr>
					<td valign="top">
						<xsl:apply-templates select="SHIPPING-METHOD-FORM"/>
					</td>
				</tr>
				<tr>
					<td valign="top">
						<xsl:apply-templates select="PAYMENT-SYSTEMS-SELECTION-FORM"/>
					</td>
				</tr>
				<tr>
					<td style="padding-top:15px;">
						<img src="{$img_url}line.gif" width="100%" height="1"/>
					</td>
				</tr>
				<tr>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
						<tr>
							<td style="color:#555555;" class="mod-form-title">
								<span class="requiered">*</span>&#160;<xsl:value-of select="/ESHOP-PAGE/LOCALE/REQ-FIELDS"/>
							</td>
							<td align="right" class="mod-form" style="border-width: 0px;">
								<button class="mod-button" style="margin-left:10px;" name="back">
									<xsl:attribute name="onclick">
										this.form.<xsl:value-of select="@ACTION-VARIABLE"/>.value='';
										this.form.<xsl:value-of select="@VIEW-VARIABLE"/>.value='cartPage';
										this.form.submit();
										return true;
									</xsl:attribute>
									<xsl:value-of select="/ESHOP-PAGE/LOCALE/BACK"/>
								</button>
								<button class="mod-button" style="margin-left:10px;" name="next">
									<xsl:attribute name="onclick">
										this.form.<xsl:value-of select="@VIEW-VARIABLE"/>.value='summaryPage';
										this.form.submit();
										return true;
									</xsl:attribute>
									<xsl:value-of select="/ESHOP-PAGE/LOCALE/CONTINUE"/>
								</button>
							</td>
						</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>
</xsl:template>

</xsl:stylesheet>