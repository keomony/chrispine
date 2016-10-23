weird_hash = Hash.new
weird_hash[[]] = 'emptiness'
weird_hash[12] = 'monkeys'
#Time.now shows the same result
weird_hash[Time.new] = 'no time like the present'

weird_hash.each do |key, value|
 puts "#{key} :" + value
end
