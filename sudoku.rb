#initial grid

 grid = [
  [6, 0, 0, 7, 0, 8, 9, 0, 0],  [1, 0, 0, 0, 3, 6, 7, 5, 0],
  [7, 0, 4, 5, 0, 0, 0, 6, 1],  [0, 2, 7, 0, 0, 0, 0, 4, 8],
  [0, 0, 1, 0, 0, 0, 6, 0, 0],  [8, 6, 0, 0, 0, 0, 2, 1, 0],
  [2, 8, 0, 0, 0, 1, 4, 0, 6],  [0, 7, 5, 6, 2, 0, 0, 0, 9],
  [0, 0, 6, 8, 0, 9, 0, 0, 3]
 ]

=begin
arr2 = Array.new(9){ [] }
def set_grid(grid, array)
  for row in 0..8
    for column in 0..8
      if array[row][column] == 0
        array[row][column] = 0
      end
      if array[row][column] > 0
        array[row][column] = 1
      end
    end
  end
end
=end

def display_grid(grid)           #displaying grid
  grid.each do |row|
    row.each do |col|
     print col
     print "  "
    end
   print "\n"
  end
end

#check if the availbility of element in row, column or grid
def check_number(element, row, col, grid)
  grid_row = (row / 3) * 3
  grid_column = (col / 3) *3
  for i in 0..8 do
    if ((grid[row][i] == element) || (grid[i][col] == element) ||(grid[grid_row + ( i % 3 )][grid_column + (i / 3)] == element))
      return 0
    end
  end
  grid[row][col] = element
  return 1
end

def user_input(grid)   #main body of user input
  loop do
  #display_grid(grid)
    print "***************Enter the Element*******: "
    element = gets.chomp.to_i
    print "*******Enter the Row  position*****: "
    row = gets.chomp.to_i
    print "*******Enter the column position****: "
    col = gets.chomp.to_i
    check_flag = check_number(element, row, col, grid)
    #puts check_flag
    if check_flag == 0
      puts "Elements is already there..!!!"
    else
      display_grid(grid)
    end
  puts "Do u want to exit press n"
  choice = gets.chomp
  break if choice == "N" || choice == "n"
  end
end

display_grid(grid)
user_input(grid)
#set_flag(grid, array2)
