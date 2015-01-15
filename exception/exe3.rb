class Student
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name=(new_name)
    if new_name.empty?
      raise "Name can not be empty"
    end
    @name = new_name
  end
end
s = Student.new("hello")
puts s.name =""
puts s.name

