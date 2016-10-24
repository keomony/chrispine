# write a method to ask the questions for us.
# It will need to take the question as a parameter,
# and return  true if they answered yes and  false if they answered no.
# (Even though most of the time we just ignore the answer,

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      return (reply == 'yes')? true : false
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

puts 'Hello, and thank you for...'

ask 'Do you like eating tacos?'      # We ignore this return value.
ask 'Do you like eating burritos?'
wetsBed = ask 'Do you wet the bed?'  # We save this return value.
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
ask 'Do you like eating tamales?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wetsBed
