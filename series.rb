array1 = [[1,2,3],[4,5,6],[7,8,9]]
i = 0
j = 0
k = 0
row = 1
while i < 3
  while j < 3
    print array1[i][j]
    j = j + 1
  
  end
  i = i + 1
  puts " | "
  j = 0
end
while row<=3
  while k < 3
    print array1[row][k]
    k = k + 1
  end
  row = row + 1
  print " | "
  k = 0
end
