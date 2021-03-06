filename = ARGV.first
script = $0
puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C). "
puts "If you do want that, hit RETURN."
print "? "
STDIN.gets
puts "Opening the file..."
target = File.open(filename, 'w')
puts "Truncating the file. Goodbye!"
target.truncate(target.size)
puts "Now I'm going to ask you for three lines."
print "line 1: "; line1 = STDIN.gets.chomp
print "line 2: "; line2 = STDIN.gets.chomp
print "line 3: "; line3 = STDIN.gets.chomp
puts "I'm going to write these to the files"
target.write("#{line1}\n#{line2}\n#{line3}\n"
puts "And endally, we close it."
target.close

# Extra Credit

# First let's refactor the write command
#
#Original:
# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")
#
# And then the -w... it truncates an existing file anyway - so it's pointless performing the truncate.