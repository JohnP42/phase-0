class Sudoku
  def initialize(board_string)
  	@grid = string_to_2d_array(9, board_string)
  	@untouchables = string_to_2d_array(9, board_string)
  	@box_size = 3
  	@node_x = 0
  	@node_y = 0
  end

  def solve
  	next_node if(!node_placable?)

  	while @node_y != nil
  		test_num = @grid[@node_y][@node_x]
  		valid = false
  		while test_num < @box_size**2
  			test_num += 1
  			if node_valid?(test_num)
  				@grid[@node_y][@node_x] = test_num
  				next_node
  				valid = true
  				break
  			end
  		end
  		if !valid
	  		@grid[@node_y][@node_x] = 0
	  		prev_node
	  	end
  	end
  end

  # Returns a string representing the current state of the board
  def to_s

  	puts "ORIGINAL_____________________________"
  	@untouchables.each do |row| 
  		print row 
  		puts ""
  		puts ""
  	end

  	puts "SOLVED_______________________________"
  	@grid.each do |row| 
  		print row 
  		puts ""
  		puts ""
  	end
  end

  private

  def string_to_2d_array(row_length, string)
  	temp = []
  	string.chars.each_slice(row_length) do |row| 
  		temp << row.map { |i| i.to_i} 
  	end
  	temp
  end

  def node_valid?(num)
  	for i in (0...@grid.length)
  		return false if @grid[i][@node_x] == num
  		return false if @grid[@node_y][i] == num

  		x_box = ((@node_y) / @box_size).floor * @box_size + (i - @box_size * (i / @box_size).floor)
		y_box = ((@node_x) / @box_size).floor * @box_size + (i / @box_size).floor
  		return false if (@grid[x_box][y_box] == num)
  	end
  	return true
  end

  def node_placable?
  	return (@untouchables[@node_y][@node_x] == 0)
  end

  def num_at_pos(x, y)
  	@grid[y][x]
  end

  def next_node 
  	loop do
	  	if (@node_x < @grid.length - 1)
	  		@node_x += 1
	  	elsif (@node_y < @grid.length - 1) 
	  		@node_y += 1
	  		@node_x = 0
	  	else
	  		@node_x = nil
	  		@node_y = nil
	  	end
	  	break if @node_y == nil
	  	break if node_placable?
  	end
  end

  def prev_node 
  	loop do
	  	if (@node_x > 0)
	  		@node_x -= 1
	  	elsif (@node_y > 0) 
	  		@node_y -= 1
	  		@node_x = @grid.length - 1
	  	else
	  		@node_x = nil
	  		@node_y = nil
	  	end
	  	break if @node_y == nil
	  	break if node_placable?
	  end
  end

end