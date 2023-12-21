// Getting the form
const form = document.forms[0];

// Getting the error span with respect to their input field
const fullnameErr = document.querySelector('#fullname_err');
const emailErr = document.querySelector('#email_err');
const passwordErr = document.querySelector('#password_err');
const countryErr = document.querySelector('#country_err');
const phoneErr = document.querySelector('#phone_err');

let flag1 = true;
let flag2 = true;
let flag3 = true;
let flag4 = true;
let flag5 = true;

// Getting the input field
let fullNameField = form["fullname"];
let emailField = form["email"];
let passwordField = form["password"];
let counrtyField = form["country"];
let phoneField = form["phone"];

const handleSubmit = () => {
    let flagFinal = true;

    // If Value if empty and click submit
    if(fullNameField.value == "") {
        fullnameErr.classList.replace('invisible', 'visible');
        flagFinal = false;
    } else if (emailField.value == "") {
        emailErr.classList.replace('invisible', 'visible');
        flagFinal = false;
    } else if (passwordField.value == "") {
        passwordErr.classList.replace('invisible', 'visible');
        flagFinal = false;
    } else if (counrtyField.value == 0) {
        countryErr.classList.replace('invisible', 'visible');
        flagFinal = false;
    }  else if (phoneField.value == 0) {
        phoneErr.classList.replace('invisible', 'visible');
        flagFinal = false;
    }

    return flagFinal && flag1 && flag2 && flag3 && flag4 && flag5;
}

// Validating the input field value on the blur event
const handleDataValidation = (e) => {
    if(e.target.name === fullNameField.name) {
        if(fullNameField.value == ""){
            fullnameErr.classList.replace('invisible', 'visible');
            flag1 = false;
        }
    }
    else if(e.target.name === emailField.name) {
        if(emailField.value == ""){
            emailErr.classList.replace('invisible', 'visible');
            flag2 = false;
        }
    }
    else if(e.target.name === passwordField.name) {
        if(passwordField.value == ""){
            passwordErr.classList.replace('invisible', 'visible');
            flag3 = false;
        }
    }
    else if(e.target.name === counrtyField.name) {
        if(counrtyField.value == 0) {
            countryErr.classList.replace('invisible', 'visible');
            flag4 = false;
        }
    }
    if(e.target.name === phoneField.name) {
        if(phoneField.value == 0) {
            phoneErr.classList.replace('invisible', 'visible');
            flag5 = false;
        }
    }
}

// Function for focus event
const handleFocusEvent = (e) => {
    if(e.target.name === fullNameField.name) {
        fullnameErr.classList.replace('visible', 'invisible'); 
        flag1 = true; 
    }
    else if(e.target.name === emailField.name) {
        emailErr.classList.replace('visible', 'invisible');
        flag2 = true;
    }
    else if(e.target.name === passwordField.name) {
        passwordErr.classList.replace('visible', 'invisible');
        flag3 = true;
    }
    else if(e.target.name === counrtyField.name) {
        countryErr.classList.replace('visible', 'invisible');
        flag4 = true;
    }
    if(e.target.name === phoneField.name) {
        phoneErr.classList.replace('visible', 'invisible');
        flag5 = true;
    }
}

// Adding the blur event listener on each input field
fullNameField.addEventListener('blur', handleDataValidation);
emailField.addEventListener('blur', handleDataValidation);
passwordField.addEventListener('blur', handleDataValidation);
counrtyField.addEventListener('blur', handleDataValidation);
phoneField.addEventListener('blur', handleDataValidation);

// Adding the focus event listener on each input field
fullNameField.addEventListener('focus', handleFocusEvent);
emailField.addEventListener('focus', handleFocusEvent);
passwordField.addEventListener('focus', handleFocusEvent);
counrtyField.addEventListener('focus', handleFocusEvent);
phoneField.addEventListener('focus', handleFocusEvent);
