#Start the program with an array holding all of the information for
#your table of contents (chapter names, page numbers, etc.). Then print out
#the information from the array in a beautifully formatted table of
#contents.

table_of_content = [["Numbers", 1], ["Letters", 72], ["Variables", 118]]
line_width = 50

puts("Table of Content".center(line_width))
table_of_content.each_with_index do |row,i|
  puts "Chapter #{i+1}:  #{row.first}".ljust(line_width/2)+"page #{row.last}".rjust(line_width/2)
end
