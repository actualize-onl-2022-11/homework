def final_grade(array)
  x = 0 
  sum = 0 
  while x < array.length
    sum = sum + array[x]
    x = x + 1
    mean = (sum/array.length)
  end 
  if array.length == 0
    p "I"
  elsif mean.round >= 90.0 
   p "A"
  elsif mean.round > 80 && mean.round < 90
    p "B"
  elsif mean.round > 70 && mean.round < 80
    p "C"
  elsif mean.round > 60 && mean.round < 70
    p "D" 
  elsif mean.round < 60
    p "F"
  end 
end

