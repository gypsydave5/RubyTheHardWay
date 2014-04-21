name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair" % [eyes, hair]
puts "His teeth are usually %s depending on the coffee" % teeth
# this line is tricky, try to get it exactly right
puts "If I add %d, %d and %d, I get %d" % [age, height, weight, age + height + weight]
robots = 5
puts "So what if 'robots' is a binary number? %b" % robots
puts "So what if 'robots' is a string? %s" % robots
puts "Fine, but how about a floating point 'robots'? %f" % robots
puts "Wow, six 0s... so can we change that? %.2f" % robots
puts "Hah, eat it - yes we can"
puts "OK, so what else can we do with these robots... %020.3f %f" % [robots, robots]
puts "Well that's pretty freaky"
puts "OK, hex and octal and then to bed :) %x %o" % [robots, robots*robots*robots]
puts "So %d in ocatal is %o. I wonder what it is in hexadecimal and in caps: %X" % [robots*robots*robots, robots*robots*robots, robots*robots*robots]
puts "Learn a new thing every day..."

