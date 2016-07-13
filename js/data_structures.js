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
  console.log("// Make: " + newCar.make);
  console.log("// Model: " + newCar.model);
  console.log("// Year: " + newCar.year);
  console.log("// Sun Roof: " + newCar.hasSunRoof);
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
