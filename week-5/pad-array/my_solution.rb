# Pad an Array

# I worked on this challenge [by myself Daniel Woznicki ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 
#an array, minimum size for output, optional filler
# What is the output? (i.e. What should the code return?)
#a new array of the minimum size
# What are the steps needed to solve the problem?
#Compare array length to minimum size
#IF min size is greater, pad
#ELSE don't pad
#Output padded array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  (array.length..min_size - 1).each { |i| array[i] = value}
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = [] + array
  (array.length..min_size - 1).each { |i| new_array[i] = value}
  new_array
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive

  (array.length..min_size - 1).each do |i| 
    array[i] = value
  end
  
  array
end

def pad(array, min_size, value = nil) #non-destructive

  new_array = [] + array
  
  (array.length..min_size - 1).each do |i| 
    new_array[i] = value
  end
  
  new_array
end


# 4. Reflection
#Were you successful in breaking the problem down into small steps?
# => Yes, it was broken down into smaller steps.

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => Yes, but we didn't end up having to use an if else statement.

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => Yes it was, because thought through the process before hand.

#When you refactored, did you find any existing methods in Ruby to clean up your code?
# => We couldn't find any existing method to help, unfortunatly. 

#How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think it is fairly readable, and I think the names are descriptive enough.

#What is the difference between destructive and non-destructive methods in your own words?
# => A destructive method will do something that is "dangerous", such as alter the 
# => passed parameter, while a non-destructive method will not. 