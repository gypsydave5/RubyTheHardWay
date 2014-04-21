puts File.open(ARGV[0]).read

#So here I've truncated all those messy long lines into a single one.
#This might have looked like:
#
# file = ARGV.first
# txt = File.open(file)
# puts txt.read
#
# But this is way cooler...