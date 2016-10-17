#one word per line, continuing until we just press Enter on an empty line

words = []
sorted_words = []

#get input from the user and store them in an array
puts "Please enter a word "
begin
  input_word = gets.chomp
  words.push input_word if input_word != ''
end while input_word != ''

#sort the array 
begin
  sorted_words << words.min
  #only one element is deleted
  words.delete_at(words.index(words.min))
end while words.length !=0

puts sorted_words.join(" ")
