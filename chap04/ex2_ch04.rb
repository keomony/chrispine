#Write a program which asks for a person's favorite number. 
#Have your program add one to the number, then suggest the result as a bigger and better favorite number. 
#(Do be tactful about it, though.)

puts "What is your favorite number?"
favorite_number = gets.chomp
puts "This number #{favorite_number.to_i+1} is bigger and better favorite number!"
