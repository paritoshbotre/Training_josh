module Display
  @@count = 0

  #display the Sudoku
  def display
    @array.each do |row|
      print "| "
      row.each do |column|
        print " #{column} "
      end
      print "|"
      print "\n"
    end
  end

  def self.count_spaces
    @@count
  end

  #counting the Number of spaces
  def counting_spaces
    i = 0
    while i < 9 do
      result = @array.at(i)
      result.each do |num|
        if num == 0
          @@count = @@count + 1
        end
      end
      i = i + 1
    end
  end
end
