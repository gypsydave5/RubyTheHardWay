def nummer (increment,cycles)
	i = 0
	numbers = []
	while i < cycles
		puts "At the top i is #{i}"
		numbers.push(i)
		i = i + increment
		puts "Numbers now: #{numbers}"
		puts "At the bottom i is #{i}"
	end
	puts "The numbers: "
	for num in numbers
		puts num
	end
end

nummer(20,6)