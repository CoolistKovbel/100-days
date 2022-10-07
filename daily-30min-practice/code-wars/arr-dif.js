function arrayDiff(a, b) {
  return a.filter((value, index, arr) => a.length > 0 && !b.includes(value));
}

console.log(arrayDiff([1, 2], [1]));
console.log(arrayDiff([1, 2, 2], [2]));
console.log(arrayDiff([1, 2, 2], []));
console.log(arrayDiff([], [1, 2]), []);
console.log(arrayDiff([1, 2, 3], [1, 2]));
console.log(arrayDiff([1, 2, 2], [1]));
