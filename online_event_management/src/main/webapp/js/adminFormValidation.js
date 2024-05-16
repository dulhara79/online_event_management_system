/**
 * 
 */
  function validateUserNames() {
    var user = document.getElementById('userName').value;
    var regex = /^[a-zA-Z ]+$/;
    
    if (!regex.test(user)) {
      document.getElementById('usernameError').innerText = '* User name must contain only alphabetic characters.';
      return false;
    } else {
      document.getElementById('usernameError').innerText = '';
      return true;
    }
}

function validateNames() {
    var fname = document.getElementById('firstname').value;
    var regex = /^[a-zA-Z ]+$/;
    
    if (!regex.test(fname)) {
      document.getElementById('firstnameError').innerText = '* Name must contain only alphabetic characters.';
      return false;
    } else {
      document.getElementById('firstnameError').innerText = '';
      return true;
    }
}
 
 function validateAddress() {
    var address = document.getElementById('address').value;
    var regex = /^[a-zA-Z0-9/. ,]+$/;

    if (!regex.test(address)) {
      document.getElementById('addressError').innerText = '* Address can only contain letters, numbers, forward slashes, dots, and commas.';
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
		document.getElementById('passwordError').innerText = '* Passwords do not match.';
		return false;
	} else {
		document.getElementById('passwordError').innerText = '';
		return true;
	}
}

function enableSubmit() {
	var isPhoneValid = validatePhone();
	var arePasswordsValid = validatePasswords();
	var isFirstnameValid = validateNames();
	var isAddressValid = validateAddress();
	var isUsernameValid = validateUserNames();
	
	document.getElementById('submit').disabled = !(isUsernameValid && isPhoneValid && arePasswordsValid && isFirstnameValid && isAddressValid);

	/*if((isUsernameValid && isPhoneValid && arePasswordsValid && isFirstnameValid && isAddressValid) == true) {
		document.getElementById('submit').
	}*/
}