# Write a program so that you can interact with your baby dragon.
# You should be able to enter commands like feed and walk,
# and have those methods be called on your dragon.
# Of course, since what you are inputting are just strings,
# you will have to have some sort of method dispatch,
# where your program checks which string was entered,
# and then calls the appropriate method.
require "./ex7_baby_dragon.rb"

pet = Dragon.new 'Norbert'
method_name = gets.chomp

#method_name = 'foobar'
if pet.respond_to? method_name
  pet.public_send(method_name)
else
  puts "no such fun you can do to your baby Dragon."
end
