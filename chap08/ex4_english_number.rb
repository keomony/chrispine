require 'pry'
def english_number(number)
  #We only want numbers from 0-100
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 100
    return 'Please enter a number 100 or lesser.'
  end
binding.pry
  #This is the string we will return.
  num_string = ''
  #"left" is how much of the number we still have left to write out.
  #"write" is the part we are writing out right now.
  #write and left .... get it? :)
  left = number
  #How many hundreds left to write out?
  write = left / 100
  #Subtract off those hundreds
  left = left - write*100

  if write > 0
    return 'one hundred'
  end
  # How many tens left to write out?
  write = left / 10
  # Subtract off those tens.
  left = left - write*10

  if write > 0
    if write == 1
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
       if left == 0
         num_string = num_string + 'ten'
       elsif left == 1
          num_string = num_string + 'eleven'
        elsif left == 2
          num_string = num_string + 'twelve'
        elsif left == 2
          num_string = num_string + 'thirteen'
        elsif left == 2
          num_string = num_string + 'fourteen'
        elsif left == 2
          num_string = num_string + 'fifteen'
        elsif left == 2
          num_string = num_string + 'sixteen'
        elsif left == 2
          num_string = num_string + 'seventeen'
        elsif left == 2
          num_string = num_string + 'eighteen'
        elsif left == 2
          num_string = num_string + 'nineteen'
       end
      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    elsif write == 2
      num_string  = num_string + 'twenty'
    elsif write == 3
      num_string  = num_string + 'thirty'
    elsif write == 4
      num_string  = num_string + 'forty'
    elsif write == 5
      num_string  = num_string + 'fifty'
    elsif write == 6
      num_string  = num_string + 'sixty'
    elsif write == 7
      num_string  = num_string + 'seventy'
    elsif write == 8
      num_string  = num_string + 'eighty'
    elsif write == 9
      num_string  = num_string + 'ninety'
    end

    if left > 0
      num_string = num_string + '-'
    end
   end
  # The only way "numString" could be empty is if
  # "number" is 0.
  if num_string == ''
    return 'zero'
  end
  # If we got this far, then we had a number somewhere
  # in between 0 and 100, so we need to return "numString".
  return num_string
end


puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
