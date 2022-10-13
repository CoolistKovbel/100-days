let name = " Gilbert grab ";

// length property
console.log(name.length);

// convert to upper case
console.log(name.toUpperCase());

// convert to lower case
console.log(name.toLowerCase());

// includes method
let password = "abc123password098";
console.log(password.includes("password"));

// Trim
console.log(name.trim());

// Strings are also objects in javascript
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String

// Challange
//  isValidPassword
// length is more than 8 and doesnt contain word password

let isValidPassword = function (pass) {
  return pass.length >= 8 && !pass.includes("password");
};
console.log(isValidPassword("abc123password"));
console.log(isValidPassword("abc123pass"));
