$roman_values = [
  {letter: 'M', value: 1000},
  {letter: 'D', value: 500},
  {letter: 'C', value: 100},
  {letter: 'L', value: 50},
  {letter: 'X', value: 10},
  {letter: 'V', value: 5},
  {letter: 'I', value: 1}
]

def old_roman_numeral number
  answer = ""

  $roman_values.each do |rv|
    answer += rv[:letter]*(number / rv[:value])
    number = number % rv[:value]
  end
  return answer
end

puts old_roman_numeral 4
puts old_roman_numeral 10
puts old_roman_numeral 100
puts old_roman_numeral 123
puts old_roman_numeral 40
puts old_roman_numeral 3999
