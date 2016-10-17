# write a method to ask the questions for us.
# It will need to take the question as a parameter,
# and return  true if they answered yes and  false if they answered no.
# (Even though most of the time we just ignore the answer,


def ask(question)
  goodAnswer = false
  while (not goodAnswer)
    answer = gets.chomp.downcase
    if (answer == 'yes' or answer == 'no')
      goodAnswer = true
      answer = (answer == 'yes')? true : false
    else
      puts 'Please answer "yes" or "no".'
      puts question
    end
  end
  return answer
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
