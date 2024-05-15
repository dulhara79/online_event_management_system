/**
 * 
 */
function validatePhone() {
	var phone = document.getElementById('phone').value;
	var regex = /^07\d{8}$/;
	if (!regex.test(phone)) {
		document.getElementById('phoneError').innerText = 'Phone number must start with 07 and contain 10 digits.';
		return false;
	} else {
		document.getElementById('phoneError').innerText = '';
		return true;
	}
}

function validatePasswords() {
	var password = document.getElementById('password').value;
	var rePassword = document.getElementById('rePassword').value;
	if (password !== rePassword) {
		document.getElementById('passwordError').innerText = 'Passwords do not match.';
		return false;
	} else {
		document.getElementById('passwordError').innerText = '';
		return true;
	}
}

function enableSubmit() {
	var isPhoneValid = validatePhone();
	var arePasswordsValid = validatePasswords();
	document.getElementById('submit').disabled = !(isPhoneValid && arePasswordsValid);
}