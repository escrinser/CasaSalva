var currentPaymentSystemCode = '';

function changePayment(code) {
	hiddenFields();
	switch (code) {
		case 'authorizeNet':
			changeStatusPaymentFields('cardNumber', '');
			changeStatusPaymentFields('expirationDate', '');
			break;
		case 'bluePay':
			changeStatusPaymentFields('cardNumberBluePay', '');
			changeStatusPaymentFields('cvv2CodeBluePay', '');
			changeStatusPaymentFields('expirationDateBluePay', '');
			break;
		case 'custom':
			self.customSettingsList.updateStatus('');
			break;
	}
	currentPaymentSystemCode = code;
}

function hiddenFields() {
	switch (currentPaymentSystemCode) {
		case 'authorizeNet':
			changeStatusPaymentFields('cardNumber', 'none');
			changeStatusPaymentFields('expirationDate', 'none');
			break;
		case 'bluePay':
			changeStatusPaymentFields('cardNumberBluePay', 'none');
			changeStatusPaymentFields('cvv2CodeBluePay', 'none');
			changeStatusPaymentFields('expirationDateBluePay', 'none');
			break;
		case 'custom':
			self.customSettingsList.updateStatus('none');
			break;
	}
}

function changeStatusPaymentFields(id, status) {
	var object = document.getElementById(id);
	object.style.display = status;
}

/**
 * Custom payment system settings scripts
 */
function CustomSettingsList() {
	this.fields = new Array();
}

CustomSettingsList.prototype.register = function(fieldId) {
	this.fields.push(fieldId);
}

CustomSettingsList.prototype.updateStatus = function(status) {
	for (var i = 0; i < this.fields.length; i++) {
		changeStatusPaymentFields(this.fields[i], status);
	}
}