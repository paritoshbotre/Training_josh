#class InvalidNameError < StandardError
class Student
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name=(new_name)
    if new_name.empty?
      raise(InvalidNameError, "wrong input")
    end
  rescue
    puts "After the Resue"
    @name = new_name
  end

end

obj = Student.new("hello")
obj.name=""
puts obj.name
