text =''
i = 0
begin
  text = gets.chomp
  if text == "BYE"
    i +=1
    if i > 2
      exit(0)
    end
  else
    i = 0
  end
  if text == text.upcase
    puts "NO, NOT SINCE #{rand(1800..2016)}!"
  else
    puts "HUH?!  SPEAK UP, SONNY!"
  end
end while true

puts "BYE!"
