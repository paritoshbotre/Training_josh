array = [
  [2, 4, 0, 3, 0, 0, 0, 0, 0],
  [7, 8, 0, 5, 0, 0, 6, 0, 0],
  [9, 3, 0, 4, 7, 0, 0, 5, 8],
  [5, 0, 7, 9, 0, 0, 0, 1, 0],
  [0, 1, 0, 0, 0, 0, 0, 9, 0],
  [0, 9, 0, 0, 0, 0, 9, 1, 0],
  [0, 1, 4, 5, 0, 0, 0, 0, 1],
  [0, 3, 5, 0, 0, 0, 0, 0, 0],
  [5, 0, 0, 0, 7, 0, 0, 0, 1]
]
array2 = Array.new(9) { Array.new(9,0) }
for i in 0..8 do
  for j in 0..8 do
    if array[i][j] > 0
      array2[i][j] = 1
    end
  end
end
spaces_count = 0

#displaying the sudoku
def display(array)
  i = 0
  while(i <= 8) do
    print "| "
    result = array.at(i)
    result.each { |element| print " #{element} "}
    i += 1
    print " | \n"
  end
end

#validating user input
def validate_user_input(element, row, column)
  if element.between?(0,8) && row.between?(0,8) && column.between?(0,8)
    return 1
  else
    return 0
  end
end

#validating the number
def validate_number(array, element, row, column, spaces, array2)
  i = 0
  row_count = (row / 3) * 3
  col_count = (column / 3) * 3
  while i < 9 do
    if array[row].include?(element) || array[i][column] == element ||
      array[row_count + (i % 3)][col_count + (i/ 3)] == element || array2[row][column] == 1
      flag = 0
      return 0
    end
    i = i + 1
  end
  if flag != 0
    array[row][column] = element
    spaces = spaces - 1
  end
end

def count_spaces(array, spaces)  #counting the spaces
  count = 0
  for i in 0..8 do
    for j in 0..8 do
      if array[i][j] == 0
        spaces = spaces + 1
      end
    end
  end
  spaces_count = spaces
  return spaces_count
end

#get input from user
def user_input(array, spaces, array2)
  loop do
    space = count_spaces(array, spaces)
    puts "Enter the Element: "
    element = gets.chomp.to_i
    puts "Enter the Row: "
    row = gets.chomp.to_i
    puts "Enter the Column: "
    column = gets.chomp.to_i
    check_user_input = validate_user_input(element, row, column)
    if check_user_input == 0
      puts "Please Re-enter valid Number, Row, Column"
    else
      flag_result = validate_number(array, element, row, column, spaces, array2)
      if flag_result == 0
        puts "Number exists please Re-enter !!"
        display(array)
      else
        display(array)
      end
    end
    puts "Press Any Key to Continue: "
    puts "Press Q to Quit: "
    quit = gets.chomp
    break if quit == "Q" || quit == "q"
  end
end

display(array)
user_input(array, spaces_count, array2)
