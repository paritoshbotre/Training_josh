module Module1
  @@spaces
  def display(array)
    array.each do |row|
      row.each do |column|
        print "#{column}"
      end
      print "\n"
    end
  end

  def self.count_spaces
    @@spaces
  end

  def counting_spaces
    i = 0
    while i < 9 do
      result = array.at(i)
      result.each do |num|
        if num == 0
          @@spaces = @@spaces + 1
        end
      end
      i = i + 1
    end
  end
end
