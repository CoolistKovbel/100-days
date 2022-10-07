let isAccountLocked = false;
let userRole = "admin";

// if (isAccountLocked) {
//   console.log("is account locked");
// } else {
//   console.log("Welcome");
// }

if (isAccountLocked) {
  console.log("is account locked");
} else if (userRole === "admin") {
  console.log("Hello admin");
} else {
  console.log("Welcome");
}

// Challange
let temp = 45;
// it is freezing outside!

if (temp <= 32) {
  console.log("its freezing outside");
} else if (temp >= 110) {
  console.log("It is hot outside");
} else {
  console.log("go for it");
}
