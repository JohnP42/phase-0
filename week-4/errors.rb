# Analyze the Errors

# I worked on this challenge by myself
# I spent [1] hour on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while false
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# => The interpreter expected end at the bottom of the page
# 6. Why did the interpreter give you this error?
# => the while loop is not closed

# --- error -------------------------------------------------------

south_park = 0

# 1. What is the line number where the error occurs?
# => 36
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method
# 4. Where is the error in the code?
# => in '<main>'
# 5. Why did the interpreter give you this error?
# => south_park has been declared, but has never been assigned.

# --- error -------------------------------------------------------

def cartman
	return 0;
end
cartman()

# 1. What is the line number where the error occurs?
# => 51
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method
# 4. Where is the error in the code?
# => in '<main>'
# 5. Why did the interpreter give you this error?
# => cartman() is being called but has never been defined.

# --- error -------------------------------------------------------

def cartmans_phrase(arg1)
  puts arg1
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 69
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => in '<main>'
# 5. Why did the interpreter give you this error?
# => cartmans_phrase is called with an argument it shouldn't have.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("offensive_message")

# 1. What is the line number where the error occurs?
# => 88
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => in '<main>'
# 5. Why did the interpreter give you this error?
# => cartman_says was called without any parameters.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# => 109
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => in 'carmans_lie'
# 5. Why did the interpreter give you this error?
# => carmans_lie was called with only argument instead of 2

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 128
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced intoo Fixnum
# 4. Where is the error in the code?
# => in '*'
# 5. Why did the interpreter give you this error?
# => can't multiply a integer by a string

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/5


# 1. What is the line number where the error occurs?
# => 143
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => in '/', end of line 143
# 5. Why did the interpreter give you this error?
# => divided by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 159
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => Cannot load such a file
# 4. Where is the error in the code?
# => in 'require_relative'
# 5. Why did the interpreter give you this error?
# => cartmans_essay.md does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?

The last one, having to do with a load error
_________________________________________________________________________________________________
How did you figure out what the issue with the error was?

I realized require_relative was a built in method, not an undefined method or variable
_________________________________________________________________________________________________
Were you able to determine why each error message happened based on the code? 

Yes
_________________________________________________________________________________________________
When you encounter errors in your future code, what process will you follow to help you debug?

Read the error message and try to determine what when wrong.

=end