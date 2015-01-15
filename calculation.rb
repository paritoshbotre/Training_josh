def calculation(a, b)
  yield(a, b)
end

def multiplication(a, b)
  yield(a, b)
end

calculation(10, 20) { |a, b| puts a + b }
multiplication(20, 40) {|a, b| puts a * b }
multiplication(20, 40) do |a, b|
  puts a * b
end
