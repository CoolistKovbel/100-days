// Multiple arguments
let add = function (a, b, c) {
  return a + b + c;
};

let result = add(10, 1, 5);
console.log(result);

//  default arguments
let getScoreText = function (name = "anonymous", score = 0) {
  return `Name: ${name}  -- Score: ${score}`;
  // return "Name: " + name + " - Score: " + score;
};

let scoreText = getScoreText(undefined, 12);
console.log(scoreText);

// Challenge area
// total, tipPercent = .2 ~ 20%

let tipCalculator = function (total, tipPercent = 0.2) {
  return `A tip of ${tipPercent * 100}% on $${total} would be $${
    total * tipPercent
  }`;
  // return total * tipPercent;
};

let tip = tipCalculator(100);
console.log(tip);
