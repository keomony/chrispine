# It's the ability to take a block of code (code in between do and end),
# wrap it up in an object (called a proc), store it in a variable or pass it to a method,
# and run the code in the block whenever you feel like (more than once, if you want).
# So it's kind of like a method itself, except that it isn't bound to an object (it is an object),
# and you can store it or pass it around like you can with any object.
toast = Proc.new do
  puts "Cheers!"
end
toast.call
toast.call

puts '-'.* 20

do_you_like = Proc.new do |a_good_thing|
  puts 'I *really* like '+a_good_thing+'!'
end

do_you_like.call 'Chocolate'
do_you_like.call 'Ruby'

puts '-'.* 20

def do_self_importantly some_proc
  puts "Everybody just HOLD ON!  I have something to do..."
  some_proc.call
  puts "Ok everyone, I\'m done.  Go on with what you were doing."
end

say_hello = Proc.new do
  puts "Heloo!"
end

say_goodbye = Proc.new do
  puts "Good Bye!"
end

do_self_importantly say_hello
do_self_importantly say_goodbye

puts '-'.* 20

def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  2.times{ some_proc.call }
end
wink = Proc.new do
  puts "<Wink>"
end
glance = Proc.new do
  puts "<Glance>"
end

maybe_do wink
maybe_do glance
twice_do wink
twice_do glance
