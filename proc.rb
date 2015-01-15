def operation(a,b, &block)
  block.call(a,b)
end

puts operation(10,20) {|a, b| a + b }
