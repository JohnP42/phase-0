# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: guess number
# Output: symbol of :high, :low, or :correct
# Steps: 
# 1. DEFINE guess method that takes 1 integer
# => and returns a symbol of :high, :low, or :correct
# 2. DEFINE solved? method that returns a boolean, true if last guess was true
# 3. In the guess method, IF the number is higher than answer THEN RETURN :high.
# => ELSE IF the number is lower THEN RETURN :low
# => ESLE RETURN :correct. The returned symbol should be stored in a instance variable last_guess
# 4. In the solved? method, IF last_guess equals correct THEN RETURN TRUE
# => ELSE RETURN FALSE


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
  	if num > @answer
  		@last_guess = :high
  	elsif num < @answer
  		@last_guess = :low
  	else
  		@last_guess = :correct
  	end
  end

  def solved?
  	return @last_guess == :correct
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
  	if @answer == num
  		@last_guess = :correct
  	else
  		@last_guess = num > @answer ? :high : :low
  	end
  end

  def solved?
  	return @last_guess == :correct
  end
end

# Reflection
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# => Methods can act as questions or actions. For instance, the method solved? acts as asking the questing
# => have I solved it yet? And, it replys with a yes or no (true or false). The method guess is
# => like saying, I guess the number (num), and it replys by telling if you were high, low, or correct.
# => instance variables act like attributes or memories. The @last_guess variable is a recollection
# => of the previous guess.

#When should you use instance variables? What do they do for you?
# => Use an instance variable when that variable needs to be accessed by the most of the class.
# => For instance, the @last_guess needed to be assigned in the guess method, but used in the solved method

#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => Use flow control to alter the way the code is read, by using if, else, and loops.
# => All flow control was executed without a problem.

#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => Using symbols in this case will only create those 3 points in memory, for :high, :low: and
# => :correct. And each time @last_guess is changed it doesn't need to create a new point in memory
# => it just points to one of the 3 already established.