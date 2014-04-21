input_file = ARGV[0]
def print_all(f)
  puts f.read
end

def rewind(f)
  #f.seek(0, IO::SEEK_SET)
  f.rewind
end

def print_a_line(line_count, f)
#  puts "#{line_count} #{f.readline}"
puts "#{f.lineno} #{f.readline}"
end

current_file = File.open(input_file)
puts "First let's print the whole file:"
puts # a blank line
print_all(current_file)
puts "Now let's rewind, kind of like a tape."
rewind(current_file)
puts "Let's print three lines:"
current_line = 1
print_a_line(current_line, current_file)
current_line = current_line + 1
print_a_line(current_line, current_file)
current_line = current_line + 1
print_a_line(current_line, current_file)

# Extra Credit

# OK, let's talk about #seek
# It's an IO class method (we're doing it on a file above), that moves the, um, read point? in the file (rdocs keeps calling this ios)
# The two arguments are the offset and the position moved from. IO::SEEK_SET sets the seek position back to the beginning.
# Other options are SEEK_CUR and SEEK_END
# we could also have used IO#rewind (see above)
#
# Now, IO#readline...
# This reads off a line (returns a string) from the ios in question (the file), and also increments a variable called lineno
# So there's no need to keep count of the current linenumber, as Ruby is already doing that for me (see altered print_a_line above)
# As long as we're happy to start counting lines from 0
# Which, deferring to my old teacher David Miller, we definitely are.
# (Or we can throw a +1 in but I can't be bothered)
#
# PS - I'm stripping out all these ruddy () from the end of methods with no arguments. Just pointless.

