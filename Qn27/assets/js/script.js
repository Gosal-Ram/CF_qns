function validationUsingJs(){
    let flag = true;
    let name = document.forms["form"]["name"].value;
    let password = document.forms["form"]["pwd"].value;

    if (name === '' || !/^[a-zA-Z ]+$/.test(name)) {
        document.getElementById('nameError').textContent = 'Please enter a valid name.';
        flag = false;
    } else {
        document.getElementById('nameError').textContent = '';
    }
    if (password.length < 4 ) {
        document.getElementById('pwdError').textContent = 'Password must be at least 4 characters ';
        flag = false;
      } else {
        document.getElementById('pwdError').textContent = '';
      }
}

