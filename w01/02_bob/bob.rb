def bob_responds(sentence)
  if sentence.include? (".") || (". ")
    p "Sounds good."
  elsif sentence.include? ("!") || ("! ")
    p "Whoa, chill out!"
  elsif sentence.include? ("?") || ("? ")
    if sentence.include? (sentence.upcase)
      p "Calm down, I know what I'm doing!"
    else 
      p "Sure."
    end
  elsif sentence.include? ("  ")
    p "Fine, be that way."
  elsif sentence.include? (sentence.upcase)
    p "Why are you yelling at me?"
  elsif 
    p "Whatever."
  else 
    p "Whatever."
  end
end
bob_responds("CAN YOU HAVE THIS TO ME BY FRIDAY?")
