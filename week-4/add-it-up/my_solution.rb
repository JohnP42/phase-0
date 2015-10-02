# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Un Choi].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers
# Output: total of all numbers in array
# Steps to solve the problem.
# iterate through array
# add each iteration to total
# return total

# 1. total initial solution
def total(num_list)
	result = 0
	for i in 0..num_list.length - 1
		result += num_list[i]
	end

	return result
end

# 3. total refactored solution
def total(num_list)
	result = 0
	for i in 0..num_list.length - 1
		result += num_list[i]
	end

	return result
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array
# Output: a sentence ending with a period
# Steps to solve the problem.
# itterate through array
# add index of itteration to a total
# return total

# 5. sentence_maker initial solution
def sentence_maker(list)
	result = ""
	for i in 0..list.length - 1
		result += list[i].to_s
		result += (i == list.length - 1) ? "." : " "
	end
	return result.capitalize
end

# 6. sentence_maker refactored solution
def sentence_maker(list)
	return list.join(" ").capitalize + "."
end