puts "Enter starting year, please"
starting_year = gets.chomp.to_i

puts "Enter ending year, please"
ending_year = gets.chomp.to_i
raise 'Input is negative or zero value' if (starting_year <=0 || ending_year <=0)
starting_year, ending_year = ending_year,starting_year if starting_year > ending_year

puts "Leap years as following:"
for year in (starting_year..ending_year) do
 if (year%4 == 0 || year%400 == 0) && (year%100 !=0)
 	puts year
 end
end
