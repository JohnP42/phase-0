// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Eran Chazan.

// Pseudocode



// Initial / refactored Solution
var seperateComma = function(integer) {
    var numArray = integer.toString().split('').reverse(); 
    var final = new Array(); 
    
    for (var i = 0; i < numArray.length; i++) {
      final.push(numArray[i]);
      if ((i+1) % 3 === 0 && i != numArray.length - 1)
          final.push(',');  
    }

    return final.reverse().join('');
}

// Reflection
//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//It was the same approach, but refactoring didn't go as well because of the lack of a each_slice method

//What did you learn about iterating over arrays in JavaScript?
//For loops are great.

//What was different about solving this problem in JavaScript?
//Use a for loop instead of a .each method

//What built-in methods did you find to incorporate in your refactored solution?
//I couldn't find methods that I didn't know of to refactor with. I was hoping for a each_slice method.