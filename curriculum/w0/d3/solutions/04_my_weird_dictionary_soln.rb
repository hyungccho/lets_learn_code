puts 'Give me a word!'
word = gets.chomp
dictionary = []

until word.downcase == 'exit' do
  dictionary << word
  puts 'Give me another word!'
  word = gets.chomp
end

dictionary.sort.reverse.each { |word| puts word }
