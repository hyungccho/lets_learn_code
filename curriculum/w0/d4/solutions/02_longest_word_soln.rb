def longest_word(sentence)
  words = sentence.split(" ")
  longest_word = ''
  longest_word_length = 0

  words.each do |word|
    if word.length > longest_word_length
      longest_word = word
      longest_word_length = word.length
    elsif word.length == longest_word_length
      longest_word += " #{word}"
    end
  end

  if longest_word.include?(" ")
    longest_word.split(" ")
  else
    longest_word
  end
end
