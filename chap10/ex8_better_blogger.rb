# Better Logger. The output from that last logger was kind of hard to read,
# and it would just get worse the more you used it.
# It would be so much easier to read if it indented the lines in the inner blocks.
# To do this, you'll need to keep track of how deeply nested
# you are every time the logger wants to write something.
# To do this, use a global variable, a variable you can see from anywhere in your code.
# To make a global variable, just precede your variable name with $,
# like these:  $global, $nestingDepth, and $bigTopPeeWee.
$nesting_depth = 0
def program_logger block_description
  space = "   " * $nesting_depth
  $nesting_depth +=1
  puts "#{space}Beginning \""+block_description+"\"..."
  return_value = yield
  puts "#{space}...\""+block_description.to_s+"\" finished, returning: #{return_value}"
  $nesting_depth -=1
end

program_logger 'outer block' do
  program_logger 'some little block' do
    program_logger 'teeny-tiny block' do
      "lots of love"
    end
    5
  end
  program_logger 'yet another block' do
    "I love Cambodian food."
  end
    false
end
