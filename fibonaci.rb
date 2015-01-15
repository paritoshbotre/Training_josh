num1 = 1
num2 = 1

puts num1, num2
i = 1
while i < 10
  num3 = num1 + num2 
  puts num3
  num1 = num2
  num2 = num3
  i = i+1
end

