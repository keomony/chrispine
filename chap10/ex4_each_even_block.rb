# A lot of the problem is that there are three steps you have to go through
# (defining the method, making the proc, and calling the method with the proc),
# when it sort of feels like there should only be two
# (defining the method, and passing the block right into the method, without using a proc at all),
# since most of the time you don't want to use the proc/block after you pass it into the method.
class Array
  def each_even(&wasablock_nowaproc)
    #let's say the first element is an even number
    is_even = true
#puts self
    self.each do |object|
      if is_even
        wasablock_nowaproc.call object
      end
      #toggle from even to odd vice visa
      is_even = (not is_even)
    end
  end
end

['apple','bad apple','cherry','durian'].each_even do |fruit|
  puts 'Yum!  I just love '+fruit+' pies, don\'t you?'
end

[1,2,3,4,5].each_even do |odd_ball|
  puts odd_ball.to_s+" NOT an even number!"
end
