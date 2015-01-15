require "./class_sudoku"
require "./user"
require "./display"

class Start_Game
  include Sudoku
  include Display
  include User
end



array = Array.new(9) { Array.new(9,0) }
game = Start_Game.new(array)
game.display
game.counting_spaces

loop do
  if Display.count_spaces == 0
    puts "Congrats You Won !!"
  else
    game.user_input
    set_flag = game.validation_of_user_input
    puts set_flag
    if (set_flag ==0)
      puts "Wrong Input, Please Re-enter"
    else
      p Display.count_spaces
      flag_row = game.validation_of_row
      puts flag_row
      flag_column = game.validation_of_column
      puts flag_column
      flag_matrix = game.validation_3_x_matrix
      puts flag_matrix
    end
    puts "Any key to Continue"
    puts "Q to Quit "
    quit = gets.chomp
    break if quit.eql?("Q") || quit.eql?("q")
    game.display
  end
end
