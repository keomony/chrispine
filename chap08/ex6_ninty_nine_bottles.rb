require "../modules/english_number_module.rb"
#puts english_number(99)
i = 9999
init_value = 9999
while i > 0
	puts "#{english_number(i)} bottles of beer on the wall, #{english_number(i)} bottles of beer."
	i -=1
  if i != 0
	 puts "Take one down and pass it around, #{english_number(i)} bottles of beer on the wall.\n\n"
  else
   puts "Take one down and pass it around, no more bottles of beer on the wall."
   puts "No more bottles of beer on the wall, no more bottles of beer."
   puts "Go to the store and buy some more, #{english_number(init_value)} bottles of beer on the wall."
 end
end
