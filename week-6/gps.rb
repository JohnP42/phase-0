# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  
  #  local variable set as a hash, holding content of food we have the option of making 
  
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

  # iterating through the library and if the library doesn't have the item then we subtract one from the error counter
  
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end
 
  #  if error counter is greater than zero, we get an error 
  
#   if error_counter > 0
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.include?(item_to_make)

  #   new variable is giving us the serving size from the library
  # serving size mod is giving us our leftovers
  
  serving_size = library[item_to_make]
#   p library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size
  
  #   when the leftovers is 0, we print out how much we made, if not, we post how many leftover ingredients we have
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: cookie#{', cake' if serving_size_mod >= 5}."
  end
end

p serving_size_calc("pie", 6)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# Short isn't always readable, don't use superfluous code, method names are important.

#Did you learn any new methods? What did you learn about them?
# I learned keep_if method, which removes an element if the block evaluates to false.
# Didn't end up using it thouch.

#What did you learn about accessing data in hashes? 
# It is the same as with arrays, just pass the key instead of the index.

#What concepts were solidified when working through this challenge?
# A bit about hashes, writing good code, case vs if statements.