a = Proc.new { |n| puts n * n * 10}
puts a

a.call(5)
