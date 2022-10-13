let myBook = {
  title: "1984",
  author: "George Orwell",
  pageCount: 326,
};

let otherBook = {
  title: "A People History",
  author: "Howard Zinn",
  pageCount: 723,
};

let getSummary = function (book) {
  return {
    summary: `${book.title} by ${book.author}`,
    pageCount: `${book.title} is ${book.pageCount} pages`,
  };
};

let bookOne = getSummary(myBook);
let bookTwo = getSummary(otherBook);
console.log(bookOne.pageCount);
console.log(bookTwo.summary);

// Challange Area

let getDegrees = function (fahrenheit) {
  return {
    fahrenheit: fahrenheit,
    celsius: (fahrenheit - 32) * (5 / 9),
    kelvin: (fahrenheit + 459.67) * (5 / 9),
  };
};

let d = getDegrees(74);

console.log(d.celsius);
console.log(d.kelvin);
