#Psuedocode 

#create a new list
#assign hash to variable

#Method 1: Create Item
#takes 2 parameters, item and quantity
#add item to hash and set value to quantity

#Method 2: Remove Item
#delete parameter from hash

#Method 3: Update Quantity
#takes 2 parameters, item and quantity
#change item's value to quantity

#Method 4: Print list
#iterate through hash and print each key value pair

#Initial Solution
$list = Hash.new()

def create(item, quantity)
  $list[item.to_sym] = quantity
end

def remove(item)
  $list.delete(item.to_sym)
end

def update(item, quantity)
  $list[item.to_sym] = quantity
end

def print_list()
  $list.each {|k, v| puts "#{k}: #{v}"}
end

#Refactored Solution

def create(item, quantity)
  $list[item] = quantity
end

def remove(item)                
  $list.delete(item)
end

def update(item, quantity)
  $list[item] = quantity
end

def print_list
  $list.each {|item, quantity| puts "#{item}: #{quantity}"}
end

create("lemonade", 2)
create("tomatos", 3)
create("onions", 1)
create("icecream", 4)

remove("lemonade")

update("icecream", 1)

print_list

#What did you learn about pseudocode from working on this challenge?
# => Ruby is just one step up from Psuedocode basically

#What are the tradeoffs of using Arrays and Hashes for this challenge?
# => Hashes are better for this I think because it can store the quantity as well, which the array can't as easily.

#What does a method return?
# => The last evaluated expression, nil, or something that uses the return statement.

#What kind of things can you pass into methods as arguments?
# => Any object.

#How can you pass information between methods?
# => By passing it parameters and using return values.

#What concepts were solidified in this challenge, and what concepts are still confusing?
# => I got a better ideas of hashes and symbols with this.