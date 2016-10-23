# Grandfather Clock. Write a method which takes a block and calls it once for each hour that has passed today.
# That way, if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock.
# Test your method out with a few different blocks (including the one I just gave you).
# Hint: You can use  Time.now.hour to get the current hour.
# However, this returns a number between 0 and 23,
# so you will have to alter those numbers in order to get ordinary clock-face numbers (1 to 12).
def grandfather_clock(&block)
  time_parts = Time.now.to_a
  #calls the block once for each hour that has passed today
  for i in (1..time_parts[2]%12) do
    block.call
    puts "It was "+i.to_s+" O'clock."
  end
end

def grandfather_clock_no_arg
    time_parts = Time.now.to_a
    time_hour = time_parts[2]%12
    #calls the block once for each hour that has passed today
    time_hour.to_i.times do
      yield
    end
end

grandfather_clock_no_arg{puts "DING"}

grandfather_clock do
  puts "DONG"
end
