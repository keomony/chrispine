# Write an Angry Boss program.
# It should rudely ask what you want.
# Whatever you answer, the Angry Boss should yell it back to you, and then fire you.
# For example, if you type in I want a raise.,
# it should yell back WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!!

begin
sentence = gets.chomp
exit(0) if sentence == ''
puts "WHADDAYA MEAN \"#{sentence.upcase}\"?!? YOUR\'RE FIRED!!"
end while true
