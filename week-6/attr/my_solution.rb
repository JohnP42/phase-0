#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [1] hours on this challenge.

class NameData

	attr_reader :name

	def initialize(name)
		@name = name
	end
end


class Greetings

	def initialize
		@data = NameData.new("John")
	end

	def hello
		puts "Hello, #{@data.name}"
	end
end

greet = Greetings.new
greet.hello

# Reflection

#release_1_____________________________________________________________________________
# What are these methods doing?
# => These methods are accessors, allowing one to view and alter instance variables
# => that would otherwise be private. 

# How are they modifying or returning the value of instance variables?
# => By using these accessors methods that I described above.

#release_2_____________________________________________________________________________
#What changed between the last release and this release?
# => The attr_reader :age was added and the what_is_age method was removed

#What was replaced?
# => the what is age method was replaced by an attribute reader.

#Is this code simpler than the last?
#Yes, it doesn't require a method to view age.

#release_3_____________________________________________________________________________
#What changed between the last release and this release?
# => The attr_writer :age was added and the change_my_age method was removed

#What was replaced?
# => the change_my_age method was removed in favor of the attribute writer

#Is this code simpler than the last?
#Yes, it removed the need for a method to alter age's value.

#release_6_____________________________________________________________________________
#What is a reader method?
# => A reader method is a method that allows one to view an instance variables value.

#What is a writer method?
# => A writer method is a method that allows one to alter an instance variables value.

#What do the attr methods do for you?
# => The attr methods allow for an instance variable to be either viewed or alter
# => depending on the attr method used, without the need to create these accessor methods
# => ones self.

#Should you always use an accessor to cover your bases? Why or Why not?
# => No, if you don't need an instance variable to be used by anything other than
# it's own class, then it would be a waste of code.
