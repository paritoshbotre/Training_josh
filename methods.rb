def sum_of_four num1, num2, num3, num4
  sum = num1 + num2 + num3 + num4
  #puts sum 
end

def addition_of_2 num1, num2
  num1 + num2
end

def empty?
end

def concate_string string1, string2
  return "Not String Arguments" if !string1.is_a? String
  return "Not String Arguments" if !string2.is_a? String
  string1 + string2
end

sum_of_four 2, 4, 8, 7
addition_of_2 2, 4
result = is_string? "hello", "world"
puts result
