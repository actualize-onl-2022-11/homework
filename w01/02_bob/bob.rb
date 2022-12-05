def bob_responds(string)
  sentence = string.strip
  last = sentence[-1]
  alpha = (sentence.downcase != sentence.upcase)
  caps = (sentence == sentence.upcase)

  return 'Fine, be that way.' if sentence.empty?
  return 'Calm down, I know what I’m doing!' if alpha && caps && last == '?'
  return 'Why are you yelling at me?' if alpha && caps
  return 'Sounds good.' if last == '.'
  return 'Whoa, chill out!' if last == '!'
  return 'Sure.' if last == '?'

  return 'Whatever.'
end
