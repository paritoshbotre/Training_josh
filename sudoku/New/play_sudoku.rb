require "./user"

class Start_game
end

#array = Array.new(9) { Array.new(9,0) }
sudoku = Sudoku.new()
user = User.new(sudoku)
loop  do
  sudoku.display()
  user.user_input
  quit = gets.chomp
  break if quit.eql?("Q")|| quit.eql?("q")
end
