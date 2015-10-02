# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(year)
	return (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
end