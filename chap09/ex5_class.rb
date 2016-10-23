class Die_one
  def roll
    1 + rand(6) #rand(6) just gives a random number between  0 and 5.
  end
end
#Let's make a couple of dice...
dice = [Die_one.new,Die_one.new]
dice.each do |die|
  puts die.roll
end

puts "-".* 30

class Die_two
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end

die = Die_two.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

puts "-".*30

puts Die_two.new.showing

class Die_three
  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end

puts Die_three.new.showing
