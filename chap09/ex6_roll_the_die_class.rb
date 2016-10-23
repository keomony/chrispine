#The only thing that might be missing is a way to set
#which side of a die is showing...

class Die
  def initialize
   roll
  end
  def roll
   @number_showing = 1 + rand(6)
  end
  def showing
   @number_showing
  end
  def cheat(number)
  @number_showing = number
  end
end

#keep rolling untill enter is pressed
begin
  puts "Which number do you want to show 1-6?"
  number = gets.chomp
  #press enter to exit
  exit(0) if number == ''
  number = number.to_i
  if number < 1 || number > 6
    puts "We don't have such number."
  else
     puts Die.new.cheat(number)
  end
  puts "Press enter to exit."
end while true
