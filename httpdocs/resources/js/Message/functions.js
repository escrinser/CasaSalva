function deleteMessageById(id) {
	var form = document.getElementById('messageForm');
	form.elements['action'].value='delete';
	form.elements['id'].value=id;
	form.submit();
	return false;
}

function insertMessage() {
	var form = document.getElementById('messageForm');
	form.elements['action'].value='insert';
	form.submit();
	return false;
}

function updateMessage() {
	var form = document.getElementById('messageForm');
	form.elements['action'].value='update';
	form.submit();
	return false;
}