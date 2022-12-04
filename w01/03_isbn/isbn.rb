def isbn_verify?(isbn_string)
  isbn_string = isbn_string.delete "-"
  if isbn_string.size <= 10
    array = []
    x = isbn_string.scan /\w/
    array << x
    collective = []
    t = 0 
    n = 10
    while t < array[0].length
      number = array[0][t].to_i * n 
      t += 1 
      n = n - 1 
      collective << number
    end 
    sum = 0 
    y = 0 
    while y < collective.length
      sum = sum + collective[y].to_i 
      y += 1
    end 
    if sum  % 11 == 0 
      p "This is a valid ISBN number"
    end 
  end 
end
isbn_verify?("3-598-21508-8")




# Ensures character in string are numbers
# isbn_string.each_char{|ch| p ch
#   if (1..9).include?(ch)
#     return "true"
#   else 
#     return "Invalid"
#   end  }
# else 
#   p "Invalid."
# end 

# TEST 
# def isbn_verify?(isbn_string)
#   array = []
# isbn_string.each_char{ |ch| p ch
#   if (1..9).include?(ch)
#     array << ch
#   end  }
#   p array
# end 

# ADDS STRING TO AN ARRAY AND CALCULATE SUM
# array = []
# x = isbn_string.scan /\w/
# array << x
# p array 
#   sum = 0 
#   y = 0 
#   while y < array[0].length
#     sum = sum + array[0][y].to_i 
#     y += 1
#   end 
#   p sum 


# Checks ISBN for VALIDITY
# def isbn_verify?(isbn_string)
#   array = []
#   x = isbn_string.scan /\w/
#   array << x
#   p array 
  
#     collective = []
#     t = 0 
#     n = 10
#     while t < array[0].length
#       number = array[0][t].to_i * n 
#       t += 1 
#       n = n - 1 
#       collective << number
#       puts number
#     end 
    
#     sum = 0 
#     y = 0 
#     while y < collective.length
#       sum = sum + collective[y].to_i 
#       y += 1
#     end 
#     if sum  % 11 == 0 
#       p "This is a valid ISBN number"
#     end 
#   end 
  