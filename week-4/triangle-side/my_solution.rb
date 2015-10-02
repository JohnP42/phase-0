# I worked on this challenge [with: Issac Lee].


# Your Solution Below
def valid_triangle?(a, b, c)
  return (a + b > c && a + c > b && b + c > a)
end