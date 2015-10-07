# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: sides
# Output: a die with that number of sides
# Steps: initialize die class, have it return a random number.


# 1. Initial Solution

class Die
  def initialize(sides)
  	raise ArgumentError.new("Sides must be greater than 0") if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end
# 4. Reflection

#What is an ArgumentError and why would you use one?
# => ArgumentError is an exception and is used then one passes an invalid argument.

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => rand(n), I implemented it without a problem

#What is a Ruby class?
# => A class is a first-class object, instances can be made of the class.

#Why would you use a Ruby class?
# => A class can have many instances of itself, each with varying properties.
# => this saves the trouble of writing the same code over and over

#What is the difference between a local variable and an instance variable?
# => A local variable is restricted to the place it was defined, a instance
# => variable is restricted to the class it was defined in.

#Where can an instance variable be used?
# => Anywear in the class it was defined.