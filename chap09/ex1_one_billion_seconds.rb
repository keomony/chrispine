# One billion seconds...
# Find out the exact second you were born (if you can).
# Figure out when you will turn (or perhaps when you did turn?) one billion seconds old.
# Then go mark your calendar.
puts "Please, tell me your date of birth."
puts "Which year were you born?"
birth_year = gets.chomp

puts "Which month were you born?"
birth_month = gets.chomp

puts "Which day of the month were you born?"
birth_day = gets.chomp

years_old = Time.now.year - Time.new(birth_year,birth_month,birth_day).year
puts "SPANK! ".* years_old
puts "-".* 20


puts Time.new(1982,3,4,19,5,31)+1000000000
