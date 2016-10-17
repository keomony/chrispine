#Write a program which asks for a person's first name, then middle, then last. 
#Finally, it should greet the person using their full name.

first_name =''
middle_name = ''
last_name = ''

puts "What is your first name?"
first_name =gets.chomp
puts "What is your middle name if any? Otherwise, press enter"
middle_name = gets.chomp
puts "What is your last  name?"
last_name = gets.chomp

def greet(first_name,middle_name,last_name)
  full_name = first_name+" "+middle_name+" "+last_name
  puts "Hello #{full_name}, it is nice to meet you!"
end

greet(first_name.capitalize,middle_name.capitalize,last_name.upcase)
