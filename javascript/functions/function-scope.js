// Global Scope (convertFahrenheitToCelsuis, tempOne, tempTwo)
// local scope (fahrenhit, celcuis)
// local scope (isFreezing)

let convertFahrenheitToCelsius = function (fahrenheit) {
  return (fahrenheit - 32) * (5 / 9);
};

let val1 = convertFahrenheitToCelsius(32);
let val2 = convertFahrenheitToCelsius(68);
console.log(val1);
console.log(val2);
