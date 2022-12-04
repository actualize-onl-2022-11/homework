# Write the solutions to each problem here!

#1
doubled_number = numbers.map { |n| (n * 2) }
p doubled_number




# 2
array = items.map {|a| a[:id]}
p array


# 3 cheated here, very confusing 
new_fruits = fruits.map{|a| [a["name"],a["color"]] }.to_h
p new_fruits


# 4
def reverse_a_string(input)
  reversed = []
  x = input.length - 1
  while x >= 0
    reversed << input[x]
    x = x - 1
  end 
  reversed.join("")
end 



# 5
def find_longest_word(input)
  long = input.chop.split(" ").sort_by{|x| x.length}
  longest_word = long[-1]
end 
# I know my thing has some limitations, like having non characters making a certain string look longer than it actually is, but not really sure how to fix. Used the chop to get rid of the ? which made phrases? same length as longest.