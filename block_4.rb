def operation(a, b, &block)
  block.call(a,b)
end


def sum(a,b)
  yield(a,b)
end

opr = lambda { |a, b| puts a + b }
puts operation(10, 20, &opr)

puts sum(50, 50) { |a, b| a + b}

