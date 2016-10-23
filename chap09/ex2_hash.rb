color_array = []
color_hash = {}

color_array[0] = 'red'
color_array[1] = 'green'
color_array[2] = 'blue'

color_hash['keywords'] = 'blue'
color_hash['strings'] = 'red'
color_hash['numbers'] = 'green'


color_array.each do |color|
  puts color
end
color_hash.each do |code_type, color|
  puts code_type + ': ' + color
end
