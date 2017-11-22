<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="PAYMENT-SYSTEMS-SELECTION-FORM">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
	<td class="mod-form" style="border-width: 0px;">
		<b><span class="mod-form-title"><xsl:value-of select="/ESHOP-PAGE/LOCALE/PAYMENT-METHOD"/></span></b>
		<div style="height: 10px;"><span></span></div>
		<div class="mod-form-hr" style="height: 1px;"><span></span></div>
		<div style="height: 10px;"><span></span></div>
		<xsl:value-of select="/ESHOP-PAGE/LOCALE/SELECT-PAYMENT-METHOD"/>
	</td>
</tr>
<tr>
	<td>
		<table cellpadding="5" cellspacing="0" border="0">
		<tr>
			<td class="mod-form" style="border-width: 0px;" nowrap="true">
				<xsl:value-of select="/ESHOP-PAGE/LOCALE/PAYMENT-METHOD"/>&#160; 
			</td>
			<td width="80%">
				<xsl:apply-templates select="PAYMENT-SYSTEMS-LIST"/>
			</td>
		</tr>
		<xsl:apply-templates select="PAYMENT-SYSTEMS-FIELDS"/>
		</table>
	</td>
</tr>
</table>
<script>
	var paymentList = document.getElementById('paymentSystemList');
	changePayment(paymentList.options[paymentList.selectedIndex].value);
</script>

</xsl:template>


<xsl:template match="PAYMENT-SYSTEMS-LIST">
<select name="paymentMethod" class="mod-input" onchange="changePayment(this.value);" id="paymentSystemList" style="width:200px">
	<xsl:apply-templates select="PAYMENT-SYSTEMS-LIST-ITEM"/>
</select>
</xsl:template>

<xsl:template match="PAYMENT-SYSTEMS-LIST-ITEM">
	<option>
		<xsl:attribute name="value"><xsl:value-of select="@CODE"/></xsl:attribute>
		<xsl:if test="@SELECTED=1"><xsl:attribute name="selected">true</xsl:attribute></xsl:if>
		<xsl:value-of select="@NAME"/>
	</option>
</xsl:template>

<!-- AUTHORIZE-NET FIELDS -->
<xsl:template match="PAYMENT-SYSTEMS-FIELDS/AUTHORIZENET">
<tr style="display:none" id="cardNumber">
	<td class="mod-form" style="border-width: 0px; width: 30%;">
		<xsl:value-of select="@CARD-NUMBER-TITLE"/>&#160;<span class="requiered">*</span>
	</td>
	<td class="mod-form" style="border-width: 0px; width: 70%;">
		<input type="text" name="cardNumber" value="{@CARD-NUMBER}" style="width:200px"/>
	</td>
</tr>
<tr style="display:none" id="expirationDate">
	<td class="mod-form" style="border-width: 0px; width: 30%;">
		<span class="">
			<xsl:value-of select="@EXPIRATION-DATE-TITLE"/>
		</span>
	</td>
	<td class="mod-form" style="border-width: 0px; width: 70%;">
		<select name="month" style="width:132px">
			<xsl:apply-templates select="EXPIRATION-DATE/MONTH"/>
		</select>
		/
		<select name="year" style="width:60px">
			<xsl:apply-templates select="EXPIRATION-DATE/YEAR"/>
		</select>

	</td>
</tr>
</xsl:template>

<!-- BLUE PAY FIELDS -->
<xsl:template match="PAYMENT-SYSTEMS-FIELDS/BLUEPAY">
<tr style="display:none" id="cardNumberBluePay">
	<td class="mod-form" style="border-width: 0px; width: 30%;">
		<xsl:value-of select="@CARD-NUMBER-TITLE"/>&#160;<span class="requiered">*</span>
	</td>
	<td class="mod-form" style="border-width: 0px; width: 70%;">
		<input type="text" name="cardNumberBluePay" value="{@CARD-NUMBER}" style="width:200px"/>
	</td>
</tr>
<tr style="display:none" id="cvv2CodeBluePay">
	<td class="mod-form" style="border-width: 0px; width: 30%;">
		<xsl:value-of select="@CVV2-TITLE"/>&#160;<span class="requiered">*</span>
	</td>
	<td class="mod-form" style="border-width: 0px; width: 70%;">
		<input type="text" name="cvv2CodeBluePay" value="{@CVV2-CODE}" style="width:200px"/>
	</td>
</tr>
<tr style="display:none" id="expirationDateBluePay">
	<td class="mod-form" style="border-width: 0px; width: 30%;">
		<span class="">
			<xsl:value-of select="@EXPIRATION-DATE-TITLE"/>
		</span>
	</td>
	<td class="mod-form" style="border-width: 0px; width: 70%;">
		<select name="monthBluePay" style="width:132px">
			<xsl:apply-templates select="EXPIRATION-DATE/MONTH"/>
		</select>
		/
		<select name="yearBluePay" style="width:60px">
			<xsl:apply-templates select="EXPIRATION-DATE/YEAR"/>
		</select>
	</td>
</tr>
</xsl:template>

<xsl:template match="EXPIRATION-DATE/YEAR/ITEM">
	<option>
		<xsl:attribute name="value"><xsl:value-of select="@VALUE"/></xsl:attribute>
		<xsl:if test="@SELECTED=1"><xsl:attribute name="selected">true</xsl:attribute></xsl:if>
		<xsl:value-of select="@NAME"/>
	</option>
</xsl:template>

<xsl:template match="EXPIRATION-DATE/MONTH/ITEM">
	<option>
		<xsl:attribute name="value"><xsl:value-of select="@VALUE"/></xsl:attribute>
		<xsl:if test="@SELECTED=1"><xsl:attribute name="selected">true</xsl:attribute></xsl:if>
		<xsl:value-of select="@NAME"/>
	</option>
</xsl:template>


<xsl:template match="PAYMENT-SYSTEM-SUMMARY">
<table cellpadding="0" cellspacing="0" border="0" width="100%" style="border-collapse: collapse; height: 100%;">
	<tr>
		<td style="padding: 5px 10px; height: 25px;" class="mod-item-header">
			<b><xsl:value-of select="/ESHOP-PAGE/LOCALE/PAYMENT-INFORMATION"/></b>
		</td>
	</tr>
	<tr>
		<td style="padding: 5px 10px;" class="mod-item-body" valign="middle">
			<xsl:value-of select="/ESHOP-PAGE/LOCALE/PAYMENT-METHOD"/>: <xsl:value-of select="@NAME"/>
			<xsl:apply-templates select="SUMMARY"/>
		</td>
	</tr>
	<tr>
		<td style="padding: 5px 10px; height: 25px;" class="mod-item-footer">
			<a class="mod-info-footer-a">
				<xsl:attribute name="href">?<xsl:value-of select="/ESHOP-PAGE/@VIEW-VARIABLE"/>=orderInfoPage</xsl:attribute>
				<xsl:value-of select="/ESHOP-PAGE/LOCALE/EDIT-PAYMENL-LINK"/>
			</a>
		</td>
	</tr>
</table>
</xsl:template>

<xsl:template match="SUMMARY/CHECK-MONEY-ORDER-INFO">
<br/><br/>
<b><xsl:value-of select="/ESHOP-PAGE/LOCALE/MAKE-PAYABLE-TO"/></b>: <xsl:value-of select="@MAKE-PAYABLE-TO"/><br/>
<b><xsl:value-of select="/ESHOP-PAGE/LOCALE/ADDRESS"/></b>:<br/>
<xsl:value-of select="@ADDRESS" disable-output-escaping="yes"/><br/>
</xsl:template>

<xsl:template match="SUMMARY/AUTHORIZENET-ORDER-INFO">
<br/><br/>
<b><xsl:value-of select="@CARD-NUMBER-TITLE"/></b>: <xsl:value-of select="@CARD-NUMBER"/><br/>
<b><xsl:value-of select="@EXPIRATION-DATE-TITLE"/></b>: <xsl:value-of select="@EXPIRATION-DATE-MONTH"/> / <xsl:value-of select="@EXPIRATION-DATE-YEAR"/><br/>
</xsl:template>

<xsl:template match="SUMMARY/BLUEPAY-ORDER-INFO">
<br/><br/>
<b><xsl:value-of select="@CARD-NUMBER-TITLE"/></b>: <xsl:value-of select="@CARD-NUMBER"/><br/>
<b><xsl:value-of select="@CVV2-TITLE"/></b>: <xsl:value-of select="@CVV2-CODE"/><br/>
<b><xsl:value-of select="@EXPIRATION-DATE-TITLE"/></b>: <xsl:value-of select="@EXPIRATION-DATE-MONTH"/> / <xsl:value-of select="@EXPIRATION-DATE-YEAR"/><br/>
</xsl:template>

<!-- CUSTOM PAYMENT FIELDS -->
<xsl:template match="PAYMENT-SYSTEMS-FIELDS/CUSTOM-PAYMENT">
	<xsl:apply-templates select="FIELDS-LIST"/>
</xsl:template>

<xsl:template match="PAYMENT-SYSTEMS-FIELDS/CUSTOM-PAYMENT/FIELDS-LIST">
	<script type="text/javascript">
		self.customSettingsList = new CustomSettingsList();
	</script>
	<xsl:for-each select="INPUT">
		<tr style="display:none" id="{ID}">
			<td class="mod-form" style="border-width: 0px; width: 30%; white-space: nowrap;">
				<xsl:value-of select="TITLE"/>
				<xsl:apply-templates select="REQUIRED"/>
			</td>
			<td class="mod-form" style="border-width: 0px; width: 70%; white-space: nowrap;">
				<xsl:apply-templates select="."/>
			</td>
		</tr>
		<script type="text/javascript">
			self.customSettingsList.register('<xsl:value-of select = "ID"/>');
		</script>
	</xsl:for-each>
</xsl:template>

<xsl:template match="PAYMENT-SYSTEMS-FIELDS/CUSTOM-PAYMENT/FIELDS-LIST/INPUT/REQUIRED">
&#160;<span class="requiered">*</span>
</xsl:template>

<xsl:template match="INPUT[TYPE='TEXT' or TYPE='PASSWORD']">
	<input class="form_input" style="width:200px" >
		<xsl:call-template name="INPUT-ATTRIBUTE"/>
	</input>
</xsl:template>

<xsl:template match="INPUT[TYPE='TEXTAREA']" >
	<textarea>
		<xsl:call-template name="INPUT-ATTRIBUTE"/>
		<xsl:value-of select = "VALUE" />
	</textarea>
</xsl:template>

<xsl:template match="INPUT[TYPE='DATE']" >
	<table border="0" style="width:100%;">
		<tr>
			<td class="mod-form" style="width: 1%; border-width: 0px; white-space: nowrap; padding: 0px 0px 0px 0px;">
				<xsl:value-of select="INPUT[@TYPE='MONTH']/TITLE"/>
			</td>
			<td class="mod-form" style="border-width: 0px; white-space: nowrap;">
				<xsl:apply-templates select="INPUT[@TYPE='MONTH']"/>
			</td>
			<td class="mod-form" style="width: 1%;  border-width: 0px; white-space: nowrap; padding: 0px 0px 0px 10px;">
				<xsl:value-of select="INPUT[@TYPE='DAY']/TITLE"/>
			</td>
			<td class="mod-form" style="border-width: 0px; white-space: nowrap;">
				<xsl:apply-templates select="INPUT[@TYPE='DAY']"/>
			</td>
			<td class="mod-form" style="width: 1%; border-width: 0px;  white-space: nowrap; padding: 0px 0px 0px 10px;">
				<xsl:value-of select="INPUT[@TYPE='YEAR']/TITLE"/>
			</td>
			<td class="mod-form" style="border-width: 0px; white-space: nowrap;">
				<xsl:apply-templates select="INPUT[@TYPE='YEAR']"/>
			</td>
		</tr>
	</table>
</xsl:template>

<xsl:template match="INPUT[TYPE='CAPTCHA']">
	<table border="0">
		<tr>
			<td rowspan="2" style="padding: 0px 10px 0px 0px;">
				<input type="text" class="mod-input">
					<xsl:apply-templates select="NAME|VALUE|ONCHANGE|ID|MAXLENGTH"/>
				</input>
			</td>
			<td>
				<img src="{SRC}" id="{NAME}_capthca_image" border="0" alt="" style="cursor: pointer;" onclick="this.realSrc = this.src; this.src = this.realSrc + '&amp;' + Math.random();"/>
			</td>
		</tr>
		<tr>
			<td style="text-align: center">
				<a href="#" class="link">
					<xsl:attribute name="onclick">
						var image = document.getElementById('<xsl:value-of select="NAME"/>' + '_capthca_image');
					 	image.realSrc = image.src;
					 	image.src = image.realSrc + '&amp;' + Math.random();
					 	return false;
					</xsl:attribute>
					<xsl:value-of select="REFRESH-CONTROL-TITLE"/>
				</a>
			</td>
		</tr>
	</table>
</xsl:template>

<xsl:template name="INPUT-ATTRIBUTE">
	<xsl:attribute name="TYPE">
		<xsl:value-of select="TYPE"/>
	</xsl:attribute>
	<xsl:apply-templates select="NAME|VALUE|ONCHANGE|ID"/>
</xsl:template>

<xsl:template match="INPUT/NAME|INPUT/TYPE|INPUT/VALUE|INPUT/ONCHANGE|INPUT/ID|INPUT/MAXLENGTH">
	<xsl:attribute name = "{name()}"><xsl:value-of select = "."/></xsl:attribute>
</xsl:template>

<xsl:template match="SUMMARY/CUSTOM-ORDER-INFO">
	<br/><br/>
	<xsl:for-each select="ITEM">
		<b><xsl:value-of select="@TITLE"/></b>: <xsl:value-of select="@VALUE"/><br/>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>