i = 99
init_value = 99
while i > 0
	puts "#{i} bottles of beer on the wall, #{i} bottles of beer."
	i -=1
  if i != 0
	 puts "Take one down and pass it around, #{i} bottles of beer on the wall.\n\n"
  else
   puts "Take one down and pass it around, no more bottles of beer on the wall."
   puts "No more bottles of beer on the wall, no more bottles of beer."
   puts "Go to the store and buy some more, #{init_value} bottles of beer on the wall."
 end
end
