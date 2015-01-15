array = [1, 2, 3, 4, 5, 6, 7, 8]
array.each do |even|
  if even % 2 == 0
    puts even
  end
end
puts "---------------------******-------------------"
x = 10
5.times do |x|
  puts "Inside the block is #{x}"
end
puts "#{x}"

puts "*********************"
x = 20
5.times do |y; x|
  x = y
  puts "Inside the do end #{x}"
end
puts "Outside the block the value is #{x}"

puts "Actual Array #{array}"

