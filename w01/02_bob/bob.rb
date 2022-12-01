def bob_responds(sentence)
  if sentence.include?("#{sentence.upcase}") && (sentence[-1] == "?")
    p "Calm down, I know what I’m doing!"
  elsif sentence.include? "."
    p "Sounds good."
  elsif sentence.include? "!"
    p "Whoa, chill out!"
  elsif sentence.include? "?"
    p "Sure."
  elsif sentence.include? "   "
    p "Fine, be that way."
  elsif sentence.include? "#{sentence.to_i}"
    if sentence.to_i != 0
      p "Whatever."
    end
  elsif sentence.include? "#{sentence.upcase}" 
    p "Why are you yelling at me?"
  else 
    p "Whatever." 
  end 
end 