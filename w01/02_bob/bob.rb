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
    if (sentence.include? (sentence.upcase)) && (sentence.count("0-9") > 0 )
      if sentence.count("a-zA-Z") > 0
        p "Why are you yelling at me?"
      else
        p "Whatever."
      end
    else
      p "Why are you yelling at me?"
    end
  else
    p "Whatever."
  end

end
