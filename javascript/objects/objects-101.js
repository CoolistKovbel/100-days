let myBook = {
  title: "1984",
  author: "George Orwell",
  pageCount: 326,
};

console.log(`${myBook.title} by ${myBook.author}`);

myBook.title = "Animal Farm";

console.log(`${myBook.title} by ${myBook.author}`);

// Challange Area

let person = {
  name: "lyub",
  age: 23,
  location: "NY",
};

console.log(`${person.name} is ${person.age} and lives in ${person.location}`);

person.age++;

console.log(`${person.name} is ${person.age} and lives in ${person.location}`);
