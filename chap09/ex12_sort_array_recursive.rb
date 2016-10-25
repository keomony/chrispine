#one word per line, continuing until we just press Enter on an empty line
# def sort_array array
#   #array.sort_by ignores case
#   array.sort_by{|w| w.downcase}.join(" ")
# end

original_words = []


puts "Please enter a word "

begin
  input_word = gets.chomp
  #add to the array only if user types something
  original_words.push input_word if input_word != ''
end while input_word != ''

#call another function to do the work of sorting
def sort some_array
  recursive_sort some_array, []
end

#recursive function which sort the array
def recursive_sort unsorted_array, sorted_array
  smallest_word = unsorted_array.shift
  unsorted_array.each do |element|
    if smallest_word.downcase > element.downcase
      smallest_word = element
    end
  end
  sorted_array << smallest_word
  if unsorted_array.length > 0
    recursive_sort unsorted_array, sorted_array
  end
  sorted_array
end

#original_words.each do |word|
#unsorted_array = original_words
p sort original_words

#end
