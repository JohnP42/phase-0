# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# => a positive integer
# What is the output? (i.e. What should the code return?)
# => a string that is the input with commas
# What are the steps needed to solve the problem?
# => convert int to string
# => make a variable to store final result
# => iterate through string backwards
# => add Commas every 3 iterations, but not on the first number
# => return string


# 1. Initial Solution

def separate_comma(num)
	num_s = num.to_s
	x = num_s.length - 1
	final = ""

	while x >= 0
		final.prepend((num_s.length - x) % 3 == 0 && x != 0 ? ",#{num_s[x]}" : "#{num_s[x]}")
		x-= 1
	end

	return final
end
# 2. Refactored Solution

def separate_comma(num)
	num.to_s.chars.to_a.reverse.each_slice(3).collect(&:join).join(",").reverse
end

# 3. Reflection

#What was your process for breaking the problem down? What different approaches did you consider?
# => First I thought about what I was sure I would need, I knew I needed to iterate, 
# => convert to a string, and add commas. Then I try to arrange these in a way that makes sense

#Was your pseudocode effective in helping you build a successful initial solution?
# => Yes, gives me guidelines to follow

#What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# => chars, reverse, each_slice, collect, and join. It was tough understanding converting procs into blocks for collect(&:join)
# => Using all the methods significantly changed the way code looks, but the process isn't to different
# => although, now I divide the string every three characters and join with commas, rather than
# => going through 1 by 1 adding a comma every 3 iterations

#How did you initially iterate through the data structure?
# => I iterated through the string in reverse using a while loop that counts down

#Do you feel your refactored solution is more readable than your initial solution? Why?
# => if you understand what each of the methods does then it is more readable.