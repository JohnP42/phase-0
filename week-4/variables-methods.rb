#Full name greeting
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp

puts "Hello, " + first + " " + middle + " " + last + ", great to meet you."

#Bigger, better favorite number
puts "What is your favorite number?"
number = gets.to_i
puts "Would you instead be interested in #{number + 1}? It is an even bigger and better number!"

=begin
________________________________________________________________
How do you define a method?

	def method_name(parameters)
	end
________________________________________________________________
What is the difference between a local variable and a method?

a local variable is a variable located inside a method that can
only be used by that method. A method is a block of code that 
can be reused by calling the methods name.
________________________________________________________________
How do you run a ruby program from the command line?

Use irb to test lines of code, or ruby {filename.rb} to run that file.
________________________________________________________________	
How do you run an RSpec file from the command line?

Use rspec {filename.rb}
________________________________________________________________	
What was confusing about this material? What made sense?

There are a lot of built in methods to remember, but it all made
sense for the most part.

https://github.com/JohnP42/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/JohnP42/phase-0/blob/master/week-4/math/my_solution.rb

=end