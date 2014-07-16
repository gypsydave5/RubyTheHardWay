# Oddly enough I think the author is a little misleading with the description of
# the way that the Array instance responds to the push message; the instance
# doesn't in itself respond to the message, rather it looks up the class
# hierarchy to find the first instance of the :push symbol, and then so on from
# there.

ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')
more_stuff = %w{Day Night Song Frisbee Corn Banana Girl Boy}

while stuff.length != 10
	next_one = more_stuff.pop()
	puts "Adding: #(next_one)"
	stuff.push(next_one)
	puts "There's #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]

puts stuff[-1] # whoa! fancy (not that fancy tbh)
puts stuff.pop()
puts stuff.join(' ') # what? cool! (again, not that cool...)
puts stuff.values_at(3,5).join('#') # super stellar (OK, I like that #values_at method...
