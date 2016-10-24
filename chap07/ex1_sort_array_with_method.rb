#one word per line, continuing until we just press Enter on an empty line
def sort_array array
  #array.sort_by ignores case
  array.sort_by{|w| w.downcase}.join(" ")
end

words_in_array = []
puts "Please enter a word "

begin
  input_word = gets.chomp
  #add to the array only if user types something
  words_in_array.push input_word if input_word != ''
end while input_word != ''

puts sort_array words_in_array
