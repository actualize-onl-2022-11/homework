def intersection(array_1, array_2)
  # Exercise 1: You need to complete this method.
  arr = []
  index1 = 0 
  while index1 < array_1.length
    index2 = 0 
    while index2 < array_2.length
      if array_2[index2] == array_1[index1]
        arr << array_1[index1]
      end
      index2 += 1
    end 
    index1 += 1
  end 
  p arr
end

def intersection(array_1, array_2)
  array_1&array_2
end 

def find_first_duplicate(array)
  # Exercise 2: You need to complete this method!
  index1 = 0
  index2 = 1 
  while index1 < array.length
    if array[index1] == array[index2]
      p array[index1]
    end 
    index1 += 1
  end
end
p find_first_duplicate([4, 2, 6, 8, 0, 3, 5, 7, 2, 9])






def subset(array_1, array_2)
  # Exercise 3: You need to complete this method!
end

def two_sum(array)
  # Exercise 4: You need to complete this method!
end