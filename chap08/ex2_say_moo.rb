#what say_moo method returns
def say_moo(number_of_moos)
  puts 'mooooo...'*number_of_moos
end

#Every method has to return something, even if it's just nil.
#ex. puts method returns nil
return_method = say_moo(4)
p return_method
