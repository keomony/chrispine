hours_per_non_leap_year = 24 * 365
hours_per_leap_year = 24 * 366
hours_per_year = 24 * (((3 * 365) + 366)/4)

#how many hours are in a year?
puts "How many hours are in a  year?"
puts "There are #{hours_per_non_leap_year} hours in a non leap year and #{hours_per_leap_year} hours in a leap year."

#how many minutes are in a decade?
puts "How many minutes are in a decade?"
puts "There are #{10*60*hours_per_year} minutes in a decade" 

#how many seconds old are you?
puts "How many seconds old are you?"
puts "I am #{60*60*hours_per_year*34} seconds old"

#how many chocolates do you hope to eat in your life? 
puts "How many chocolates do you hope to eat in your life?"
puts "I don't know. I don't want to set the year that I have to leave this beautiful world."

#If I am 1246 million seconds old, how old am I?

puts "If I am 1246 million seconds old, how old am I?"
puts "I am #{1246000000/(60*60*24*hours_per_year)} year old."
