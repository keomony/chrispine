# In this example, compose takes two procs and returns a new proc which,
# when called, calls the first proc and passes its result into the second proc.
def compose(proc1, proc2)
#this  method returns this Proc.new which takes parameter x
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

double_it = Proc.new do |x|
  x + x
end

square_it = Proc.new do |x|
  x * x
end

double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_then_double.call(5)

#the following lines work if Proc.new is removed from the method
# puts compose(double_it, square_it,5)
# puts compose(square_it, double_it,5)
