# Calculate the mode Pairing Challenge

# I worked on this challenge with Peter Wiebe

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input? Array
# What is the output? Array of most frequent values
# What are the steps needed to solve the problem?

# Create method named mode that takes an array as a parameter
# Create an empty hash with default values of zero
# Iterate through the passed in array 
# For each value in the array either create a new key using the array value and add one to the key's value or just add one to the key's value if already it exists
#Create a temporary array
#Create a temporary integer variable called occurances
#Iterate through hash
#For each key in the hash compare the value to occurances variable
#If the value is greater than the occurance variable then reset temporary array and add to temporary array
#If the value is equal to the occurance variable then add to the array
#If the value is less than the occurance variable then skip that key
#Once iteration complete then return temporary array


# 1. Initial Solution
def mode(array)
  freq = Hash.new(0)
  
  array.each do |i|
    freq[i] += 1
  end
  
  temp = Array.new
  largest = 0
  
  freq.each do |k, v|
    if(v > largest)
      temp.clear
      temp.push(k)
      largest = v
    elsif(v == largest)
      temp.push(k)
    end
  end
  
  return temp
end

# 3. Refactored Solution
def mode(array)
  freq = Hash.new(0)
  
  array.each do |i|
    freq[i] += 1
  end
  
  largest = freq.max_by{|k,v| v}[1]
  
  array.reject {|i| array.count(i) < largest }.uniq 
end

# 4. Reflection

#Which data structure did you and your pair decide to implement and why?
# => We used a hash so that we could use the keys as array items and values as the count.

#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# => The psuedocode was much better this time, though I owe that to my pair this time.

#What issues/successes did you run into when translating your pseudocode to code?
# => Translating the psuedocode went easy.

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# => We used the each method to iterate initially, but later discovered max_by and a couple others. Implementing these was a bit challenging.