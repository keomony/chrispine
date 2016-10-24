#we could write a program which asks for your first,
#middle, and last names individually,
#and then adds those lengths together

first_name =''
middle_name = ''
last_name = ''

puts "What is your first name?"
first_name =gets.chomp
puts "What is your middle name if any? Otherwise, press enter"
middle_name = gets.chomp
puts "What is your last  name?"
last_name = gets.chomp

#returns the number of characters without space
puts "#{first_name+" "+middle_name+" "+last_name} has #{first_name.length + middle_name.length + last_name.length} characters."
