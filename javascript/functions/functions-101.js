// function - input (argument`s`), code,  output (return value)

let greetUser = function () {
  console.log("Welcome user");
};

greetUser();

let square = function (num) {
  let result = num * num;
  return result;
};

let value = square(3);
console.log(value);
let value2 = square(10);
console.log(value2);

// Challange area

// convertFahrenheitToCelsius

// Call 32 -> 0 && 68 -> 20
// print values

let convertFahrenheitToCelsius = function (fahrenheit) {
  return (fahrenheit - 32) * (5 / 9);
};

let val1 = convertFahrenheitToCelsius(32);
let val2 = convertFahrenheitToCelsius(68);
console.log(val1);
console.log(val2);
