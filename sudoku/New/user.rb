require "./user_defined_exception.rb"
require "./sudoku.rb"

class User

  def initialize(sudoku)
    @sudoku = sudoku
  end

  def user_input
    begin
      puts "Enter the Element: "; element = check_input(gets.chomp.to_i)
      puts "Enter the Row: "; row = check_row(gets.chomp.to_i)
      puts "Enter the Column: "; column = check_column(gets.chomp.to_i)
      puts "uasdads"
      #puts element, row, column
      #puts @sudoku.inspect
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
