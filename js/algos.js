// Release 0: Find the Longest Phrase

// write a function 
// takes an array of words or phrases 
// returns the longest word or phrase in the array
// ex: ["long phrase","longest phrase","longer phrase"]
// returns: "longest phrase"

// PSEUDOCODE
// count the phrase with .length
// 

// function longestPhrase(array) {
//   for (var i = 0; i < array.length; i++) {
//   console.log(array[i] + " = " + array[i].length);
//   }
//   // for (var i = 0; array.length = 1; i++) {
    
//   //   length1 = array[i].length
//   //   length2 = array[i+1].length

//   //   if (length1 < length2) {
//   //   delete array[1];
//   //   console.log(array);
//   // }
// }

// Here's a partial solution found on http://www.codequizzes.com/javascript/beginner/functions-variable-scope

var longestPhrase = function(array) {
  var result = array[0];
  for (var i = 0; i < array.length; i++) {
    if (array[i] > result) {
      result = array[i];
    };
  }
  return result;
}

// Add driver code that tests your function on a few arrays.

console.log(longestPhrase(["cat", "bunny", "triceratops"]));
console.log(longestPhrase(["jay", "peacock", "parakeet"]));
console.log(longestPhrase(["coffee", "cream", "sugar"])); // wrong

// declare a function that takes a string as a parameter
// set a variable str = string.split

// Release 1: Find a Key-Value Match

// function takes two objects 
// checks to see if the objects share at least one key-value pair.
// returns true = {name: "Steven", age: 54} and {name: "Tamir", age: 54}
// If no match return false

function kvMatch() {

}


// kvMatch([{name: "Steven", age: 54} and {name: "Tamir", age: 54}])

// Add some driver code that tests both outcomes of your function.
