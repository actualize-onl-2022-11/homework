def final_grade(array)
  sum = 0 
  array.each do |grade|
    sum += grade
end

if array == []
  puts "I"
else
  average = sum / array.length
end

if average.to_i > 100
  puts "Error, cannot exceed 100"
elsif average.to_i >= 90
  grade = "A"
elsif average.to_i >= 80
  grade = "B"
elsif average.to_i >= 70
  grade = "C"
elsif average.to_i >= 60
  grade = "D"
elsif average.to_i >= 0
  grade = "F"
else
  puts "Error, grades cannot go below 0"
end
 p grade 
end