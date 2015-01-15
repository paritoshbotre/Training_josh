module Sudoku
  def initialize(array)
    @array =
    [
      [0, 0, 2, 0, 1, 9, 0, 0, 4],[0, 0, 3, 8, 2, 4, 5, 0, 1],[0, 0, 1, 7, 6, 0, 3, 2, 0],
      [9, 0, 0, 0, 0, 0, 6, 8, 3],[0, 0, 0, 0, 4, 0, 0, 0, 0],[2, 1, 5, 0, 0, 0, 0, 0, 7],
      [0, 6, 9, 0, 8, 3, 2, 0, 0],[1, 0, 4, 5, 7, 6, 8, 0, 0],[5, 0, 0, 1, 9, 0, 4, 0, 0]
    ]
    @array2 = Array.new(9) { Array.new(9,0) }
  end

  #validation of row
  def validation_of_row
    if @array[@row - 1].include?(@element)
      return true
    end
    return false
  end

  #validation of column
  def validation_of_column
    @array.each_with_index do |number, index|
      if @array[index][@column - 1] == @element
        return true
      end
    end
    return false
  end

  #validation of 3 x 3 matrix
  def validation_3_x_matrix
  end
end
