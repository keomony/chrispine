#Methods Which Take Procs
# Our method will take some object and a proc, and will call the proc on that object.
# If the proc returns false, we quit; otherwise we call the proc with the returned object.
# We keep doing this until the proc returns false (which it had better do eventually, or the program will crash).
# The method will return the last non-false value returned by the proc.

def do_until_false(first_input, some_proc)
  input = first_input
  output = first_input
  while output
    input = output
    output = some_proc.call input
  end
 input
end

always_false = Proc.new do |just_ignore_me|
  false
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if (last_number <= 0)
    false
  else
    array.pop
    array.push last_number**2
    array.push last_number - 1
  end
end

p do_until_false([5], build_array_of_squares)
puts do_until_false('I\'m writing this at 3:00 am; someone knocks me out!', always_false)
