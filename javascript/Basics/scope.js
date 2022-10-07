// lexical scope (static scope)
// global scope - defined outside of all code blocks
// local scope - defined inside a code block

// Global Scope (varOne)

let varOne = "varOne";

if (true) {
  // local Scope (varTwo)
  console.log(varOne);
  let varTwo = "varTwo";
  console.log(varTwo);

  if (true) {
    // local Scope (varFour)
    let varFour = "varFour";
  }
}

if (true) {
  // local Scope (varThree)
  let varThree = "varThree";
}

console.log(varTwo);
