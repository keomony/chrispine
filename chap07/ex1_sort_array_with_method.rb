#one word per line, continuing until we just press Enter on an empty line

words_in_array = []
puts "Please enter a word "

begin
  input_word = gets.chomp
  #add to the array only if user types something
  words_in_array.push input_word if input_word != ''
end while input_word != ''
#array.sort_by ignores case
puts words_in_array.sort_by{|w| w.downcase}.join(" ")
