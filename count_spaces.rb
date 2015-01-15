array = [
  [1, 2, 3, 0, 0, 0],
  [0, 0, 1, 2, 4, 0],
  [1, 3, 2, 1, 0, 0]
]
print array
print "\n"

j = 0
i = 0

while i <= 2 do
  result = array.at(i)
  #print result
  result.each do |num|
    if num == 1
      j = j + 1
    end
  end
  i = i + 1
end
puts j
