sum = lambda { |a, b| puts a + b }

sum.call(10,20)

puts "********"

def sum(a, b, operation)
end

puts sum(10 ,20, lambda {|x, y| x + y})

