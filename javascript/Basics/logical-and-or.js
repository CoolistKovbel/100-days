let temp = 55;

//  Logical and operator - True of both side are true false otherwise
//  Logical or operator - True if atleast one side is true false otherwise

if (temp >= 60 && temp <= 90) {
  console.log("It is preety nice out");
} else if (temp <= 0 || temp >= 120) {
  console.log("Do not go outside");
} else {
  console.log("Do what you want");
}

// Challange area

let isGuestOneVegan = true;
let isGuestTwoVegan = false;

// are both vegan
// are atleast one vegan
// none vegan

if (isGuestOneVegan && isGuestTwoVegan) {
  console.log("offer vegan dishes");
} else if (isGuestOneVegan || isGuestTwoVegan) {
  console.log("make sure offer a few vegan dises");
} else {
  console.log("Offer anything to the maneu");
}
