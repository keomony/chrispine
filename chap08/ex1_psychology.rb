# let’s try that psychology experiment program again.
# This time we’ll write a method to ask the questions for us.
# It will need to take the question as a parameter and return true if the
# person answers yes and false if they answer no. (Even though most of the time
# we just ignore the answer, it’s still a good idea for our method to return the
# answer. This way we can use it for the bed-wetting question, too.) I’m also
# going to shorten the greeting and the debriefing, just so this is easier to read:

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  answer # This is what we return (true or false).
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?' # Ignore this return value
ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed
