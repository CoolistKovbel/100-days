// undefinied represent an absents in value
// undefinied for variable
let name;

if (name === undefined) {
  console.log("Please provide a name");
} else {
  console.log(name);
}
// undefined for function arguments
//  undefined as function return default value
let square = function (num) {
  console.log(num);
};

let result = square();
console.log(result);

// null as assined value
let age = 27;
age = null;
console.log(age);
