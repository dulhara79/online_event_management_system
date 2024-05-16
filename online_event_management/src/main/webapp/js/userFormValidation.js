/**
 * 
 */
  function validateUserNames() {
    var user = document.getElementById('username').value;
    var regex = /^[a-zA-Z]+$/;
    
    if (!regex.test(user)) {
      document.getElementById('usernameError').innerText = 'User name name must contain only alphabetic characters.';
      return false;
    } else {
      document.getElementById('usernameError').innerText = '';
      return true;
    }
}

function validateFirstNames() {
    var fname = document.getElementById('firstname').value;
    var regex = /^[a-zA-Z]+$/;
    
    if (!regex.test(fname)) {
      document.getElementById('firstnameError').innerText = 'First name must contain only alphabetic characters.';
      return false;
    } else {
      document.getElementById('firstnameError').innerText = '';
      return true;
    }
}

function validateLastNames() {
	var lname = document.getElementById('lastname').value;
    var regex = /^[a-zA-Z]+$/;
    
    if (!regex.test(lname)) {
      document.getElementById('lastnameError').innerText = 'Last name must contain only alphabetic characters.';
      return false;
    } else {
      document.getElementById('lastnameError').innerText = '';
      return true;
    }
 }
 
 function validateAddress() {
    var address = document.getElementById('address').value;
    var regex = /^[a-zA-Z0-9/. ,]+$/;

    if (!regex.test(address)) {
      document.getElementById('addressError').innerText = 'Address can only contain letters, numbers, forward slashes, dots, and commas.';
      return false;
    } else {
      document.getElementById('addressError').innerText = '';
      return true;
    }
  }
 
 function validatePhone() {
	var phone = document.getElementById('mobileno').value;
	var num = /^07\d{8}$/;
	
	if (!num.test(phone)) {
		document.getElementById('phoneError').innerText = '* Phone number must start with 07 and contain 10 digits.';
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
	var isFirstnameValid = validateFirstNames();
	var isLastnameValid = validateLastNames();
	var isAddressValid = validateAddress();
	
	document.getElementById('submit').disabled = !(isPhoneValid && arePasswordsValid && isFirstnameValid && isLastnameValid && isAddressValid);
}