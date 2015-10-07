copperheads = [
"Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
"Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
"Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
"John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
"Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
"Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
"Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
"James Kirkpatrick", "Christopher Lee", "Isaac Lee",
"Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
"Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
"Jeremy Powell", "Jessie Richardson", "David Roberts",
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
"Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
"Daniel Woznicki", "Jay Yee", "Nicole Yee", "Burno Zatta"]

# Pseudocode
# Input: an array
# Output: puts an array of arrays that contains the new groups and returns it.
# => Randomize array
# => Split the array
# => Fill any small groups
# => put the array and return it.

#Initial
def create_groups(people)
	list = people.shuffle
	list = list.each_slice(5).to_a

	for i in 0..1
		if(list[-1].length < 3)
			list[-1].push(list[0].pop)
		end
	end

	list.each {|i| puts "Group #{list.index(i)+1}: #{i}"}
end



#Refactor
def create_groups(people)
	list = people.shuffle.each_slice(5).to_a

	for i in 0..1
		if(list[-1].length < 3)
			list[-1].push(list[0].pop)
		end
	end

	list.each {|i| puts "Group #{list.index(i)+1}: #{i}"}
end

create_groups(copperheads)

# What was the most interesting and most difficult part of this challenge?
# => Figuring out a good method to split the array

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => Yes, I think so

# Was your approach for automating this task a good solution? What could have made it even better?
# => I think it was a good solution, Though it could be better if I had it make sure it split
# => groups in the most even way possible, rather than just taking from the first and giving
# => to the last.

# What data structure did you decide to store the accountability groups in and why?
# => I stored it into an array of arrays, becaues each_slice split it that way.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => I had trouble trying to find a better methd, though I am sure there is one. In the process
# => looking for another method I did learn of a couple, such as group_by.