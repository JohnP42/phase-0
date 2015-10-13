# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.

# PLAYABLE BINGO GAME

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #DEFINE a method called call that takes no parameters and returns an array with a length of 2
  #Randomly assign the array's first element with a letter
  #Randomly assign the array's second value with a number
  #return the array

# Check the called column for the number called.
  #DEFINE a method called check_call that takes an array as a parameter
  #Compare the passed array with the bingo_board

# If the number is in the column, replace with an 'x'
  #Set the number to 'X'

# Display a column to the console
  #PRINT the bingo_board collumn

# Display the board to the console (prettily)
  #PRINT the bingo_board

# Initial Solution

class BingoBoard

  def initialize
    @bingo_board = Array.new(5) { |i| Array.new(5) { rand(15) + (i * 15) + 1}}
    @bingo_board[2][2] = 'X'
  end

  def call
    letter = rand(5)
    num = rand(15) + (letter * 15) + 1
    return [letter,num]
  end

  def check_call(call)

    puts ['B', 'I', 'N', 'G', 'O'][call[0]] + call[1].to_s

    if(@bingo_board[call[0]].include?(call[1]))
      index = @bingo_board[call[0]].index(call[1])
      @bingo_board[call[0]][index] = 'X'
    end

    (0..4).each {|i| p @bingo_board[i]}
  end

  def got_bingo?

    col_count = Array.new(5) {0}
    diagnols = Array.new(2) {0}

    @bingo_board.each do |row|
      return true if row.count('X') == 5
      (0..4).each { |i| col_count[i] += 1 if row[i] == 'X'}
    end

    col_count.each {|count| return true if count == 5}

    (0..4).each do |i| 
      diagnols[0] += 1 if @bingo_board[i][i] == 'X'
      diagnols[1] += 1 if @bingo_board[4-i][i] == 'X'
    end

    return true if diagnols.include?(5)
    return false
  end

end

new_game = BingoBoard.new

playing = true

while playing

  new_game.check_call(new_game.call)

  if new_game.got_bingo?
    puts "You got BINGO!"
    playing = false
  else
    puts "Call next number? y/n"
    playing = gets.chomp == 'y'
  end
end


#Reflection
#How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => It wasn't too bad, I think i've gotten better at pseudocodeing.

#What are the benefits of using a class for this challenge?
# => One can create new games by instantiating another class.

#How can you access coordinates in a nested array?
# => array[x][y]

#What methods did you use to access and modify the array?
# => count, inlude, []

#How did you determine what should be an instance variable versus a local variable?
# => If the entire class needed it, it was an instance variable.

#What do you feel is most improved in your refactored solution?
# => I think it is improving, though this code is long, and a bit messy. But
# => I made it a fully playable bingo game. It even checks if you got bingo.