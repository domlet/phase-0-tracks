
var names = ["Erinc", "Dom", "Ondine", "Josh"]
var colors = ["red", "blue", "yellow", "green"]

names.push("Jane") // one way to add an item
colors.push("orange") // one way to add an item

// colors[5] = "black" // another way to add an item
// names[5] = "Can" // another way to add an item

function create_obj(arr1, arr2) {
    var obj = {};
    for(var i = 0; i < arr1.length; i ++) {
        obj[arr1[i]] = arr2[i];
    }
    return obj
}

create_obj(names, colors)

function Car(make, model, year, hasSunRoof) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.hasSunRoof = hasSunRoof;
  console.log("---");
  this.honk = function() { console.log("** Beep! Beep! **"); };
  this.printObject = function() {
    console.log(this)
  }
  this.printCar = function() {
  console.log("---------");
  console.log("Here is a nice formatted listing:");
  console.log("// Make: " + this.make);
  console.log("// Model: " + this.model);
  console.log("// Year: " + this.year);
  console.log("// Sun Roof: " + this.hasSunRoof);
  console.log("---------");
  };
  console.log("CAR INITIALIZATION COMPLETE");
}

var newCar = new Car("Toyota", "Corolla", 1991, true);
newCar.honk()
newCar.printCar()
newCar.printObject()

var secondCar = new Car("Toyota", "Prius", 2007, false);
secondCar.honk()
secondCar.printCar()

// If you wanted to loop through the keys and values of an object, how would you do that? (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)

// method 1
var object = {Toyota:"red", "Honda":"blue", "Chevrolet":"gold"};
for (var property in object) {
  console.log("This vehicle is a " + object[property] + " " + property);
}
console.log("---------");

// method 2

// for (var key in p) {
//   if (p.hasOwnProperty(key)) {
//     console.log(key + " -> " + p[key]);
//   }
// }

// Are there advantages to using constructor functions to create objects? Disadvantages? 

