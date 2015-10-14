
puts "Hello. What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What is your Reddit username?"
reddit = gets.chomp

text = "Your name is #{name}, you are #{age} years old, and your username is #{reddit}."
File.open("output_test.txt", 'w') { |file| file.write(text) }
puts text