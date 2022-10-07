let name = "Andrew";

if (true) {
  // Will use local variable instead of parent variable
  let name = "Mike";
  if (true) {
    // Will reasign because of the very next variable that came before the variable
    name = "jen";
    console.log(name);
  }
}

if (true) {
  // Will use parent variable since there is a variable there
  console.log(name);
}
