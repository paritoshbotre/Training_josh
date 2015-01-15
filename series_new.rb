number = 1
iteration1 = 1
while iteration1 <=3 
  print " | "
  iteration2 = 1
  while iteration2 <= 9
    print number
    if iteration2 % 3 == 0
      print " | "
    end
    number += 1
    if number > 9
      number = 1
    end
    iteration2 += 1
  end
  number = (iteration1 * 3) + 1
  iteration1 += 1
  print "\n"
end
