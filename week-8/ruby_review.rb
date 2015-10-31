# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: myself].


# 2. Pseudocode
# create a car class that takes a model and a color
# DEFINE a drive method that takes a distance to drive
# create a speed instance variable that can be read from
# create a turn method that takes input of left or right
# create an accelerate method that adds to the value of speed
# create a total_distance instance variable to keep track of total distance
# create a stop method that sets speed to 0
# every method should print what has been done.


# 3. Initial Solution
# class Car

# 	def initialize(model, color)
# 		@model = model
# 		@color = color
# 		@speed = 0
# 		@total_distance = 0
# 	end

# 	#takes a float to represent miles
# 	def drive(distance)
# 		@total_distance += distance
# 		puts "You drove #{distance} mile#{"s" unless distance == 1} while going #{@speed}mph."
# 	end

# 	#takes a string of "left" or "right"
# 	def turn(direction)
# 		puts "You turned #{direction}."
# 	end

# 	#takes a number to represent miles per hour
# 	def accelerate_to(speed) 
# 		puts "You #{speed > @speed ? "sped up" : "slowed down"} to #{speed}mph."
# 		@speed = speed;
# 	end

# 	def get_current_speed
# 		puts "Your current speed is #{@speed}."
# 	end

# 	def get_total_distance
# 		puts "You have traveled a total of #{@total_distance} mile#{"s" unless @total_distance == 1}."
# 	end

# 	def stop
# 		@speed = 0;
# 		puts "You hit the brakes and stopped the car."
# 	end
# end
# 4. Refactored Solution

class Car

	def initialize(model, color)
		@model = model
		@color = color
		@speed = 0
		@total_distance = 0
	end

	#takes a float to represent miles
	def drive(distance)
		@total_distance += distance
		puts "You drove #{distance} mile#{"s" unless distance == 1} while going #{@speed}mph."
		puts "You have crashed your father's #{@color} #{@model}." if @speed > 80
	end

	#takes a string of "left" or "right"
	def turn(direction)
		puts "You turned #{direction}."
	end

	#takes a number to represent miles per hour
	def accelerate_to(speed) 
		puts "You #{speed > @speed ? "sped up" : "slowed down"} to #{speed}mph."
		@speed = speed;
	end

	def get_current_speed
		puts "Your current speed is #{@speed}."
	end

	def get_total_distance
		puts "You have traveled a total of #{@total_distance} mile#{"s" unless @total_distance == 1}."
	end

	def stop
		@speed = 0;
		puts "You hit the brakes and stopped the car."
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
myCar = Car.new("Ferrari", "Red")
myCar.accelerate_to(25)
myCar.drive(0.25)
myCar.stop
myCar.turn("right")
myCar.accelerate_to(35)
myCar.drive(1.5)
myCar.get_current_speed
myCar.accelerate_to(15)
myCar.drive(0.25)
myCar.stop
myCar.turn("left")
myCar.accelerate_to(35)
myCar.drive(1.4)
myCar.stop
myCar.get_total_distance
myCar.accelerate_to(120)
myCar.drive(1)

# 5. Reflection
# What concepts did you review or learn in this challenge?
# => Class structure, and string interpolation.

# What is still confusing to you about Ruby?
# => Using ruby for web development

# What are you going to study to get more prepared for Phase 1?
# => Ruby syntax, methods, and practices.