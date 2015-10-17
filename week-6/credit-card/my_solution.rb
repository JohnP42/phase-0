=begin
Pseudocode

1 Define method check_card
check_card will take an input of 16 numbers

2 Take each number and order them in an array

3476 1234 6789 0234

a[0]= 3
a[1]= 4
a[3]= 7

3. Create an IF statement
IF "index"%2==0
then multiply the value in the array position by 2 
(This is because arrays positions start at 0)

Set this as a new array (or alternatvely we can create a destructible method)

Once we multiply and set our new array,
we want to take numbers with double digits and set them as new array.

(concatenated = array_of_arrays.flatten)

4. Take the sum of the new array
*** array.inject{|sum,x| sum + x }

(Probably some .sum method that we can use)
(maybe reduce?)

5. IF sum%10==0, return true
ELSE return false


=end

#Initial solution

# class CreditCard
  
#   def initialize(card_number) 
#     if (!card_number.is_a?(Integer) || num_to_array(card_number).length != 16)
#       raise ArgumentError.new("Must pass card number as an integer!")
#     end
#     @card_number = card_number
#   end
  
#   def check_card  
#     card_array = num_to_array(@card_number)
    
#     double_even_indexes!(card_array)
#     total = expand_then_sum!(card_array)
  
#     total % 10 == 0
#   end
  
#   def num_to_array(number)
#     num_array = number.to_s.chars
#     num_array.map! {|char| char.to_i}
#      #.chars changes string into an array of       character
#   end
    
#   def  double_even_indexes!(num_array)
#     for i in 0..num_array.length-1
#       if i % 2 == 0
#         num_array[i] *= 2
#       end
#     end
#     num_array
#   end
  
#   def expand_then_sum!(num_array)
#     num_array.map! do |num|
#       if num > 9
#         num_to_array(num)
#       else
#         num
#       end
#     end
    
#     num_array.flatten!
#     num_array.reduce (:+)
#     #.reduce method takes an binary operator
#     #and applies it to each element in the array
#   end
# end

# Refactored Solution
class CreditCard
  
  def initialize(card_number) 
    if (!card_number.is_a?(Integer) || num_to_array(card_number).length != 16)
      raise ArgumentError.new("Must pass card number as an integer!")
    end
    @card_number = card_number
  end
  
  def check_card  
    card_array = num_to_array(@card_number)  
    double_even_indexes!(card_array)
    total = expand_then_sum!(card_array) % 10 == 0
  end
  
  def num_to_array(number)
    num_array = number.to_s.chars.map! {|char| char.to_i}
  end
    
  def  double_even_indexes!(num_array)
    num_array.each_with_index do |item, index|
      num_array[index] *= 2 if index.even?
    end
  end
  
  def expand_then_sum!(num_array)
    num_array.map! do |num|
      if num > 9 then num_to_array(num) else num end
    end
      
    num_array.flatten!.reduce (:+)
  end
end

# Reflection
#What was the most difficult part of this challenge for you and your pair?
# => I think the hardest thing to do was making sure everything was clean
# => and readable, and picking method names and deciding on whether to use
# =>  bang! or not.

#What new methods did you find to help you when you refactored?
# => each_with_index

#What concepts or learnings were you able to solidify in this challenge?
# => Dividing code into methods, and working in small steps.