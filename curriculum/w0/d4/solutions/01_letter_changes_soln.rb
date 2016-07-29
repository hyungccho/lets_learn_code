def letter_changes(str)
  alphabet = ('a'..'z').to_a
  vowels = ['a', 'e', 'i', 'o', 'u']
  new_str = ''

  str.each_char do |char|
    if alphabet.include?(char)
      next_char = alphabet[alphabet.index(char) + 1] || 'a'
    else
      next_char = char
    end

    if vowels.include?(next_char)
      next_char.upcase!
    end

    new_str += next_char
  end

  new_str
end
