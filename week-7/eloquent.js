// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myVariable = 7;

//prompt("What is your favorite food?"); 
//console.log("For Realzies!!?? Tahts my favorite too?");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for(var i = 0; i < myVariable; i++) {
	var row = "";
	for(var z = 0; z < i; z++) {
		row += "#";
	}
	console.log(row);
}


// Functions

// Complete the `minimum` exercise.
var min = function(n1, n2) {
	return n1 < n2 ? n1 : n2;
};

console.log(min(-5, 10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "John Polhill",
	age: 20,
	favorite_food: "All of it",
	quirk: "Double jointed"
};