tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split \non a line"
backslash_cat = "I'm \\ a \\ cat."
fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\t* Grass
MY_HEREDOC
puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

#Extra Credit

days = ['Mon','Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
format = "The days of the week are \n\t* %s \n\t* %s \n\t* %s \n\t* %s \n\t* %s \n\t* %s \n\t* %s\nTah-dah!"
puts format % days

# and I've found that \a makes a noise

puts "\a"

# and that \r is a carriage return and \b is backspace. We can use \b for some fun commmand line graphics stuff.