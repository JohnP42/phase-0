# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array
# Output: die class
# Steps: check for argument, then assign variable, make sides method, make roll method


# Initial Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("The array cannot be empty!") if labels.length == 0
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(@labels.length)]
  end
end

# Reflection
#What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# => The only real difference is the use of an array, the logic is the same.

#What does this exercise teach you about making code that is easily changeable or modifiable? 
# => That classes can be used to make minor altercations without re-writing code.

#What new methods did you learn when working on this challenge, if any?
# => I was familiar with all the methods I used in this challenge

#What concepts about classes were you able to solidify in this challenge?
# => This challenge ended up being very similar to the original die class,
# => so the concepts I learned were the same.