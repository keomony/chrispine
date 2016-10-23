#Upgrade ex4_english_number.rb
#First, it has too much repetition.
#Second, it doesn't handle numbers greater than 100.
#Third, there are too many special cases, too many returns.
#Let's use some arrays and try to clean it up a bit:
#TODO: optimise the code by using a function to check how big the number is (trillion,million,..?)
#DRY that's why this function comes to an existence
# require 'pry'
# binding.pry
def cadinal(cadinal_number, cadinal_name, left, num_string)
  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)

  write = left/cadinal_number
  left  = left - write*cadinal_number
    if write > 0
      trillions  = english_number write
      num_string = num_string + trillions + cadinal_name
      if left > 0
        num_string = num_string + ' and '
      end
    end
  return num_string, left
end

def english_number number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  num_string = ''  # This is the string we will return.

  ones_place = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tens_place = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left  = number
  #checking for one trillion
  num_string, left = cadinal(1000000000000000000, ' trillion', left, num_string)
#puts "what is here?#{cadinal(1000000000000000000, ' trillion', left, num_string)} "
  #checking for one billion
  num_string, left = cadinal(1000000000000, ' billion',left, num_string)

  #checking for one million
  num_string, left = cadinal(1000000, ' million',left, num_string)

  #checking for one thousand
  num_string, left = cadinal(1000, ' thousand', left, num_string)

  #checking for one hundred
  num_string, left = cadinal(100, ' hundred', left, num_string)

  #checking for ten
  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is 'four', not 'three'.
  end

  # Now we just return "num_string"...
  return num_string
end

puts english_number(1000000)
puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
