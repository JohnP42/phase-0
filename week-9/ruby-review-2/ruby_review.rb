# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# is_fibonacci? takes an integer, num
# seed n1 and n2 as 0 and 1
# loop WHILE n2 is less than num
# add n1 to n2
# set n1 equal to n2 minus n1
# END loop
# RETURN true IF n2 equals num or IF n1 equals num

# Initial Solution
def is_fibonacci?(num)
   n1 = 0
   n2 = 1

   while n2 < num
      n2 += n1
      n1 = n2 - n1
   end

   n2 == num || num == n1
end

# Refactored Solution
# Only works on fibonacci numbers that aren't too big.

# def is_fibonacci?(num)
#    (is_perfect_square?(5 * num**2 + 4) || is_perfect_square?(5 * num**2 - 4))
# end

# def is_perfect_square?(num)
#    Math.sqrt(num).to_i == Math.sqrt(num)
# end

# Reflection
# What concepts did you review in this challenge?
# => Algorithms and math

# What is still confusing to you about Ruby?
# => I don't yet know all the build in methods

# What are you going to study to get more prepared for Phase 1?
# => built in methods
