user = ARGV.first
robots = ARGV[1]
prompt = '> '
puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()
puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()
puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()
puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.

Also there are #{robots} robots attacking.
MESSAGE

# Extra Credit

# So today we learned that #gets doesn't just look at the command line (STDIN) but also the arguments passed in when running the script (ARGV)
# And that ARGV is an array - which makes sense
