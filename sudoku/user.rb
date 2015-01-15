module User
  #Take user Input
  def user_input
    puts "Enter the Element: "; @element = gets.chomp.to_i
    puts "Enter the Row: "; @row = gets.chomp.to_i
    puts "Enter the Column: "; @column = gets.chomp.to_i
  end

  #validation of User Input
  def validation_of_user_input
    if @element.between?(1,9) && @row.between?(1,9) && @column.between?(1,9)
      return 1
    else
      return 0
    end
  end
end
