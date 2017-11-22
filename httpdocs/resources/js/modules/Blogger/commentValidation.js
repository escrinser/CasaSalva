function validateForm() {
	if (validateField('SB_Validator.notEmpty', 'name', 'EMPTY-NAME')
		&& validateField('SB_Validator.notEmpty', 'subject', 'EMPTY-SUBJECT')
		&& validateField('SB_Validator.notEmpty', 'comment', 'EMPTY-COMMENT')
	) {
		document.forms['commentForm'].submit();
		return true;
	} else {
		return false;
	}
}