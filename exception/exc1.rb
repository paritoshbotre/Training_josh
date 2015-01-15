def divide(num1, num2)
  if num2 == 0
    raise(StandardError,"Divide by 0 Error not permitted",["abc","xyz"])
  end
  num1 / num2
end

puts divide(10,2)
puts divide(10,0)
#puts divide(10, "one")

puts "after the divide"
