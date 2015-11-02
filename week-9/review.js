// Build a simple guessing game

// Pseudocode:
// create an object called GuessingGame that has an answer
// answer is an instance variable and an integer
// create a lastGuess instance variable
// create a guess function for GuessingGame that takes an integer and sets lastGuess to "high", "low", "or correct"
// create a isSolved function that RETURNS whether the last guess was correct

// Initial Solution:
function GuessingGame(answer) {
  this.answer = answer;

  this.guess = function(num) {
    if(num === this.answer) 
      this.lastGuess = "correct";
    else
      this.lastGuess = num > this.answer ? "high" : "low";
  }

  this.isSolved = function() {
    return (this.lastGuess === "correct");
  }
}

// Reflection:
//What concepts did you solidify in working on this challenge? 
//== Translating ruby into java.

//What was the most difficult part of this challenge?
//== Not being sure if this is the best way, since javascript functions differently than ruby.

//Did you solve the problem in a new way this time?
//== Nope

//Was your pseudocode different from the Ruby version? What was the same and what was different?
//== Concept wise it was the same, but it is worded differently.