array = [
   [0, 0, 2, 0, 1, 9, 0, 0, 4],[0, 0, 3, 8, 2, 4, 5, 0, 1],[0, 0, 1, 7, 6, 0, 3, 2, 0],
   [9, 0, 0, 0, 0, 0, 6, 8, 3],[0, 0, 0, 0, 4, 0, 0, 0, 0],[2, 1, 5, 0, 0, 0, 0, 0, 7],
   [0, 6, 9, 0, 8, 3, 2, 0, 0],[1, 0, 4, 5, 7, 6, 8, 0, 0],[5, 0, 0, 1, 9, 0, 4, 0, 0]
]

array2 = Array.new(9) { Array.new(9,0) }
$counter = 0

#display the sudoku
def display(array)
  array.each do |row|
    print " | "
    row.each do |column|
      print "#{column} "
      print "|"
    end
    print "\n"
  end
end

#validate user Input
def validate_input(element, row, column)
  if element.between?(1,9) && row.between?(1,9) && column.between?(1, 9)
    flag = 1
    #return 1
  else
    #raise(MycustomException, "Wrong Input") 
    #return 0
  end
  if flag == 1
    return 1
  else
    return 0
  end
end

#validating row
def validate_row(array, element, row)
  if array[row].include?(element)
    flag = 1
    #return 1
  end
  if flag == 1
    return 1
  else
    return 0
  end
end

#validating column
def validate_column(array, element, column)
  array.each_with_index do |number, index|
    if array[index][column] == element
      flag = 1
      #return 1
    end
  end
  if flag == 1
    return 1
  else
    return 0
  end
end

#validating matrix
def validate_matrix(array, element, row, column)
  row_index = (row / 3) * 3
  column_index = (column / 3) * 3
  i = 1
  while i <= array.length
    if array[row_index + ((i - 1) % 3)][column_index + ((i - 1) / 3)] == element
      #return 1
      flag = 1
    end
    i = i + 1
  end
  if flag == 1
    return 1
  else
    return 0
  end
end

#check the state of pre-defined arrays
def validate_state(array, row, column, array2)
  if array2[row][column] == 1
    #return 1
    flag = 1
  end
  if flag == 1
    return 1
  else
    return 0
  end
end

#User input validate with grid
def validate_grid(array, element, row, column, array2)
  row = row - 1
  column = column - 1
  set_flag_row = validate_row(array, element, row)
  print "\n Row =>#{set_flag_row} "                                        #1 element found row
  set_flag_column = validate_column(array, element, column)
  print "\n Column => #{set_flag_column} "                                     #1 element found in column
  set_flag_grid = validate_matrix(array, element, row, column)
  print "\n Grid =>#{set_flag_grid} "
  set_flag_state = validate_state(array, row, column, array2)
  print "\n state =>#{set_flag_state}\n"
end

#Get user Input
def get_user_input(array, array2)
  loop do
    if $counter == 0
      puts "Congrats you Won !!"
    else
      print "Enter the Element: "
      element = gets.chomp.to_i
      print "Enter the Row: "
      row = gets.chomp.to_i
      print "Enter the Column: "
      column = gets.chomp.to_i
      flag_result = validate_input(element, row, column)
      if flag_result == 0
        puts "Please provide proper Input"
      else
        validate_grid(array, element, row, column, array2)
      end
      display(array)
      print "Enter Q to Quit"
      print "Press any key to continue"
      quit = gets.chomp
      break if quit.eql?("Q") || quit.eql?("q")
    end
  end
end

#counting the spaces
def counting_spaces(array)
  i = 0
  j = 0
  while i < 9 do
    while j < 9 do
      if array[i][j] == 0
        $counter = $counter + 1
      end
      j = j + 1
    end
    i = i + 1
  end
end
i = 0
j = 0

while i < 9 do
  while j < 9 do
    if array[i][j] > 0
      array2[i][j] = 1
    end
    j = j + 1
  end
  i += 1
end
counting_spaces(array)
display(array)
counting_spaces(array)
get_user_input(array,array2)
