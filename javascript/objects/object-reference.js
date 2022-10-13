let myAccount = {
  name: "James",
  expenses: 0,
  income: 0,
};

let addExpense = function (account, amount) {
  account.expenses = account.expenses + amount;
};

// Add Income
let addIncome = function (account, amount) {
  account.income = account.income + amount;
};

// ResetAccount
let resetAccount = function (account) {
  account.expenses = 0;
  account.income = 0;
};

// GetAccountSummary
let getAccountSummary = function (account) {
  let bal = account.income - account.expenses;
  return `Account for ${account.name} has $${bal}. $${account.income}. $${account.expenses} in expenses.`;
};

addIncome(myAccount, 1000);
console.log(myAccount);
addExpense(myAccount, 100);
console.log(myAccount);
addExpense(myAccount, 200);
console.log(myAccount);
let g = getAccountSummary(myAccount);
console.log(g);
resetAccount(myAccount);
getAccountSummary(myAccount);
console.log(myAccount);
