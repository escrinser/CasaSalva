/**
 * Validate field with validator method and show message if it contains invalid data
 *
 * @param string methodName
 * @param string elementId
 * @param string localeKey
 * @return bool
 */
function validateField(methodName, elementId, localeStr) {
	eval('var result = ' + methodName + '(document.getElementById(\'' + elementId + '\').value);');

	if (asterix = document.getElementById(elementId + '_asterix')) {
		showElement(asterix, !result);
	}
	
	if (!result) {
		alert(localeStr);
		document.getElementById(elementId).focus();
		return false;
	}
	
	return true;
}

function showElement(element, show) {
	if (show) {
		element.style.display = "";
	} else {
		element.style.display = "none";
	}
}


/**
 * Validate field with validation expression and show message if it contains invalid data
 *
 * @param string validator
 * @param string elementId
 * @param string localeKey
 * @return bool
 */
function extendedValidateField(validator, elementId, localeKey) {	
	eval('var result = ' + validator + ';');
	
	// hide asterix if field have valid data
	if (asterix = document.getElementById(elementId + '_asterix')) {
		showElement(asterix, !result);
	}
	
	if (!result) {
		alert(localeKey);
		document.getElementById(elementId).focus();
		return false;
	}
	
	return true;
}
