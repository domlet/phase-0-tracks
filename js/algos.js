// Release 0: Find the Longest Phrase

// write a function 
// takes an array of words or phrases 
// returns the longest word or phrase in the array
// ex: ["long phrase","longest phrase","longer phrase"]
// returns: "longest phrase"

// PSEUDOCODE
// count the phrase with .length
// 

function longestPhrase(array) {
  for (var i = 0; i < array.length; i++) {
  console.log(array[i] + " = " + array[i].length);
  }
}

// Add driver code that tests your function on a few arrays.

longestPhrase(["cat", "bunny", "triceratops"])

// declare a function that takes a string as a parameter
// set a variable str = string.split

