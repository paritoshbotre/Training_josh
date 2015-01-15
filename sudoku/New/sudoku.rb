class Sudoku

  def initialize
    @array =[
      [0, 0, 2, 0, 1, 9, 0, 0, 4],[0, 0, 3, 8, 2, 4, 5, 0, 1],[0, 0, 1, 7, 6, 0, 3, 2, 0],
      [9, 0, 0, 0, 0, 0, 6, 8, 3],[0, 0, 0, 0, 4, 0, 0, 0, 0],[2, 1, 5, 0, 0, 0, 0, 0, 7],
      [0, 6, 9, 0, 8, 3, 2, 0, 0],[1, 0, 4, 5, 7, 6, 8, 0, 0],[5, 0, 0, 1, 9, 0, 4, 0, 0]
    ]
  end

  def display
    @array.map { |number| puts number.join(" ") }
  end

  def validate_row(element, row, column)
     puts  row
     @array[row].include?(element) ? true : false
  end

  def validate_column(element, column)
    @array.each_with_index do |number, index|
      if @array[index][column] == element
        return true
      end
    end
    return false
  end

  def insert_element(element, row, column)
    @array[row][column] = element
  end

  def validate_3_x_3_matrix(element, row, column)
    row_index = (row / 3) * 3
    column_index = (column / 3) * 3
    i = 1
    while i <= @array.length
      if @array[row_index + ((i - 1) % 3)][column_index + ((i - 1) / 3)] == element
        return true
      end
      i = i + 1
    end
    return false
  end

  def user_input
    begin
      puts "Enter the Element: "; element = check_input(gets.chomp.to_i)
      puts "Enter the Row: "; row = check_row(gets.chomp.to_i)
      puts "Enter the Column: "; column = check_column(gets.chomp.to_i)
      row_index = row - 1
      column_index = column - 1
      flag_row = @sudoku.validate_row(element,row_index,column_index)
      flag_column = @sudoku.validate_column(element, column_index)
      flag_matrix = @sudoku.validate_3_x_3_matrix(element, row_index, column_index)
      puts flag_row
      puts flag_column
      puts flag_matrix
      if flag_row == true || flag_column == true || flag_matrix == true
        puts "Element Exists"
      else
        @sudoku.insert_element(element, row_index, column_index)
      end
    rescue InvalidElement => e
      puts e.message
    rescue InvalidRow => e
      puts e.message
    rescue InvalidColumn => e
      puts e.message
    end
  end

  def check_input(element)
    if element.nil? || !element.between?(1,9)
      raise InvalidElement, "Wrong Input"
    end
    element
  end

  def check_row(row)
    if row.nil? || !row.between?(1,9)
      raise InvalidRow, "Wrong Row"
    end
    row
  end

  def check_column(column)
    if column.nil? || !column.between?(1,9)
      raise InvalidColumn, "Wrong Column"
    end
    column
  end

end
