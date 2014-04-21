filename = ARGV.first
prompt = "> "
txt = File.open(filename)
puts "Here's your file: #{filename}"
puts txt.read
puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp
txt_again = File.open(file_again)
puts txt_again.read(5)
puts ""
puts "Let's try this..."
puts txt.inspect
puts File.foreach(filename) {|x| print "Line - ", x}
txt.close
txt_again.close
puts txt.inspect


#EXTRA CREDIT

# ARGV.first returns the first item in th array of CL arguments
# File.open(filename) retunrs the contents of the file 'filename'
# txt.read, read is a method that can be performed on Files, txt is a file (see above), and read returns (I guess) the contents. Which we put
# Everything else is pretty obvious - we get some more input from STDIN and open another (or the same file) and put the return of its #read method