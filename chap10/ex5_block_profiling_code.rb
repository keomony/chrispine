# I remember one time I wanted to be able to time
# how long different sections of a program were taking.
# (This is also known as profiling the code.)
# So I wrote a method which takes the time before running the code,
# then it runs it, then it takes the time again at the end and
# figures out the difference.
# I can't find the code right now, but I don't need it;
# it probably went something like this:

def profile description_of_block, &block
  start_time = Time.now

  block.call

  duration = Time.now - start_time

  puts description_of_block+':  '+duration.to_s+' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s+' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
