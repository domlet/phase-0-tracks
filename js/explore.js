// Release 4: Write a JavaScript Program

// -------- Question 2 --------
// stole this from https://codereview.stackexchange.com/questions/133769/reverse-string-in-javascript-without-using-reverse

// declare a function "reverse" with argument "str"
// create a variable "result" with value of a blank string
// start a "for" loop
  // declare variable "i" with value equal to string length, minus one
  // set the condition while "i" is greater than or equal to zero...
  // then decrease "i" by one 
// the thing to do: assign to "result" the value of str at position "i"
// return the result
// show the user the result

// -------- Question 3 --------

function reverseString(str) {
  var result = "";
  for (var i = str.length -1; i >= 0; i--) {
    result += str.charAt(i);
  }
  return result;
}

// -------- Question 4 --------

sisterMessage = reverseString("!sretsis olleH");
console.log(sisterMessage)

// -------- Question 5 --------

var domAwake = true;
var noelleAwake = true;

if (domAwake && noelleAwake) {
  console.log(reverseString("!sretsis olleH"));
} else if (domAwake && !noelleAwake) {
  console.log("The two sisters are not both awake.");
} else {
  console.log("Neither sister are awake.")
}

// add two numbers
function add(x, y) {
  return x + y;
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
