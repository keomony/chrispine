# Program Logger. Write a method called log, which takes a string description of a block and, of course, a block.
# Similar to  doSelfImportantly, it should puts a string telling that it has started the block,
# and another string at the end telling you that it has finished the block,
# and also telling you what the block returned. Test your method by sending it a code block.
# Inside the block, put another call to log, passing another block to it.
# (This is called nesting.)

def program_logger block_description
  puts "Beginning \""+block_description+"\"..."
   return_value = yield
  puts "...\""+block_description.to_s+"\" finished, returning: #{return_value}"
end

program_logger 'outer block' do
  program_logger 'some little block' do
    5
  end
  program_logger 'yet another block' do
    "I love Cambodian food."
  end
    false
end
