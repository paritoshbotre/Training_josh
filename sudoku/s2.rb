array = [
  [0, 0, 2, 0, 1, 9, 0, 0, 4],[0, 0, 3, 8, 2, 4, 5, 0, 1],[0, 0, 1, 7, 6, 0, 3, 2, 0],
  [9, 0, 0, 0, 0, 0, 6, 8, 3],[0, 0, 0, 0, 4, 0, 0, 0, 0],[2, 1, 5, 0, 0, 0, 0, 0, 7],
  [0, 6, 9, 0, 8, 3, 2, 0, 0],[1, 0, 4, 5, 7, 6, 8, 0, 0],[5, 0, 0, 1, 9, 0, 4, 0, 0]
]
array2 = Array.new(9) { Array.new(9,0) }
for i in 0..8 do                           #states the  1 and 0 in array2
  for j in 0..8 do
    if array[i][j] > 0
      array2[i][j] = 1
    end
  end
end
$spaces = 0

#displaying the sudoku
def display_sudoku(array)
  array.each do |row|
    print " |"
    row.each do |element|
      print " #{element} "
    end
    print " |"
    print " \n"
  end
end

#count the number of spaces
def spaces_count(array)
  counter = 0
  for i in 0..8 do
    for j in 0..8 do
      if array[i][j] == 0
        counter = counter + 1
      end
    end
  end
  $spaces = counter
end

#validate user Input
def validate_user_input(element, row, column)
  if (1..9).include?(element) && (1..9).include?(row) && (1..9).include?(column)
    return 1
  else
    return 0
  end
end

#checks the row
def check_row_grid(array, row, column, element)
  if array[row].include?(element)
    return 1
  end
end

#checks the column
def check_column_grid(array, row, column, element)
  i = 1
  while i <= 9 do
    if array[i - 1][column] == element
      return 1
    end
    i += 1
  end
end

#check the number with row, column and grid
def checking_row_column_grid(array, element, row, column, array2)
  row = row - 1
  column = column - 1
  #row_index = (row / 3) * 3
  #col_index = (column / 3) * 3
  row_grid = check_row_grid(array, row, column, element)
  puts row_grid
  column_grid = check_column_grid(array, row, column, element)
  puts column_grid

=begin
  while i <= 9 do
    if array[i- 1][column] == element || array2[row][column] == 1|| array[row].include?(element)
      (array[row_index + ((i - 1) % 3)][col_index + ((i - 1) / 3)] == element)
      flag = 1
      return 1
    end
    i += 1
  end
  if array2[row][column] > 0                #element check if pre-define element present
    puts "Element Exists"
    flag = 1
    return 1
  end
  if flag != 1
    array[row][column] = element
    puts "Element Inserted .."
    $spaces -= 1
    display_sudoku(array)
  end
=end
end

#Get input from user
def get_user_input(array, array2)
  puts "Enter the Element: "
  element = gets.chomp.to_i
  puts "Enter the Row: "
  row = gets.chomp.to_i
  puts "Enter the Column: "
  column = gets.chomp.to_i
  set_flag = validate_user_input(element, row, column)   #validate the input of user
  if set_flag == 0
    puts "Please enter valid Element and Row, column"
  else
    element_exists = checking_row_column_grid(array, element, row, column, array2)
    if element_exists == 1
      puts "Element Exists, Please Re-enter"
    end
  end
end

loop do
  no_of_spaces = spaces_count(array)
  if no_of_spaces == 0
    puts "Congrats You win ...!!!"
  else
    display_sudoku(array)
    flag_status_user = get_user_input(array, array2)
  end
  puts "Press Any key to continue: "
  puts "Press Q to Quit "
  quit = gets.chomp
  break if quit.eql?("Q") || quit.eql?("q")
end
