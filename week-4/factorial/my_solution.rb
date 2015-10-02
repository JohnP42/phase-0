# Factorial

# I worked on this challenge [by myself, with: Un Choi].


# Your Solution Below
def factorial(number)
  return number > 1 ? factorial(number - 1) * number : 1
end