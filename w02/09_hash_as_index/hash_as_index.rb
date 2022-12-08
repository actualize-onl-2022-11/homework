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


def find_first_duplicate(array)
  # Exercise 2: You need to complete this method!
end

def subset(array_1, array_2)
  # Exercise 3: You need to complete this method!
end

def two_sum(array)
  # Exercise 4: You need to complete this method!
end