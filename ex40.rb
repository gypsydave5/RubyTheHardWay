cities = { 'CA' => 'San Francisco', #not using that rocket syntax...
					 'MI' => 'Detroit',
					 'FL' => 'Jacksonville'
					 }

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

cities.each {|key,value| puts "#{value} is in #{key}"}

def find_city(map, state)
	if map.include? state
		map[state]
	else
		"Not found."
	end
end

#ok pay atttention!
cities[:find] = method(:find_city)

while true
	print "State> (ENTER to quit) "
	state = gets.chomp

	break if state.empty?

	#this line is the most important ever! study!
	puts cities[:find].call(cities, state)
end

# So what have we here? The find_city method is defined and bound to the
# find_city variable. Then a new key is added to the cities hash, :find, and
# it's value is `method(:find_city)` - which is I guess the way of looking at
# methods in isolation (may as well say self.method). This is an alias for the
# top-level method. The way the method is then activiated from within the hash
# is by literally calling it with call.
#
# method 'looks up the named method as a receiver in the object and returns
# a Method object'. It's sitting there in Object
#
# And Method#call invokes the method of the Method object. So `cities[:find]`
# pulls up the Method object stored under :find, and .call calls it with the
# arguments
#
# Bloody long winded way of doing alll this. And does't seem very OOPy.
#
# And screw putting the returns in the method definition too.
