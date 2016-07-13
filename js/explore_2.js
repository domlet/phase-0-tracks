// Release 4

// pseudocode a function that takes a string as a parameter and reverses the string. Remember that you can add strings in JavaScript, so '' + 'a' would result in the string 'a'.

// declare a variable
// call some kind of "reverse" method on the variable
// print the result to the screen

function reverseeee(string) {
  return string.split('').reverse().join('');
}

console.log(reverseeee("hello"))

// add two numbers
function add(x, y) {
  return x+ y;
}

// say hello

function sayHello() {
  console.log("Hello!");
}

console.log(add(5, 3));
sayHello()

var isOver21 = true;
var drinksAlcohol = false;

if (isOver21 && drinksAlcohol) {
  console.log("Would you like a drink?");
} else if (isOver21 && !drinksAlcohol) {
  console.log("Can I get you some water?");
} else {
  console.log("One Shirley Temple, coming up!")
}

// declare some variables
var currentlyLearning = "Ruby";
var daysProgramming = 21;
var enjoyingCoding = true;
var biggestComplaint = null;

// print a variable
console.log("currentlyLearning has a value of " + currentlyLearning);
console.log("daysProgramming has a value of " + daysProgramming);
console.log("enjoyingCoding has a value of " + enjoyingCoding);
console.log("biggestComplaint has a value of " + biggestComplaint);

// reassign a variable
currentlyLearning = "JavaScript";

// print the new value of the variable
console.log("currentlyLearning has a value of " + currentlyLearning);

var str = "Loop over me!"
for (var i = 0; i < str.length; i++) {
  console.log(str[i]);
}

// Now that you understand the purpose of each statement in the for declaration, can you declare another loop that counts to 10 and logs each number to the console? Try to reason through it rather than Googling the answer.

for (var i = 1; i < 11; i++) {
  console.log(i);
}

// What happens if you change the i++ statement in a loop to i+=2?

for (var i = 0; i < 10; i+=2) {
  console.log(i);
}

console.log ("// Can you figure out how to count down from 10 instead? Try to reason through it instead of Googling, though you can look it up if you have to. Either way, now you know how to loop backward!")

for (var i = 10; i > 0; i--) {
  console.log(i);
}
