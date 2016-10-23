# Wouldn't it be nice if you could write something like 22.to_eng instead of englishNumber 22?
# Here's how you would do that
# We add one method in Integer class.
class Banana
  @i = 5
  def to_eng
    if @i == 5
      english = 'five'
    else
      english = 'fifty-eight'
    end
puts @i
  english
  end
end

#We don't need to declare a new instance
#as 5 and 58 are instances of class Integer
a = Banana.new
puts a.to_eng
#puts 58.to_eng
