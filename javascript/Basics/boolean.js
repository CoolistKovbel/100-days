// === - equality operator
// !== - not equal operator
// < - less than operator
//  > - greater than operator
//  <= - less than or equal to operator
// >= - greater than or equal to operator

let temp = 131;
let isFreezing = temp <= 31;

// if statement
if (temp <= 32) {
  console.log("It is freezing");
}

if (temp >= 110) {
  console.log("It is way to hot");
}

// Challange area
// create age
let age = 23;

// Caluclate is child 7 or under

let isChild = age <= 7;

// Caluclate is senior 7 or under

let isSenior = age >= 65;

console.log(isChild);
console.log(isSenior);

// challange 2

if (age <= 7) {
  console.log("Child price free");
}

if (age >= 65) {
  console.log("senior discount active");
}
