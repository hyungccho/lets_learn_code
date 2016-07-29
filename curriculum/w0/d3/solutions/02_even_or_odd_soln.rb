puts 'Give me an integer!'
num = gets.chomp.to_i

if num % 2 == 1
  puts 'Odd!'
elsif num % 2 == 0
  puts 'Even!'
end
