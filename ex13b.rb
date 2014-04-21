arg1, arg2, arg3, arg4 = ARGV

input = gets.chomp

print "So I know that #{arg1}, and #{arg2}. And I've heard that #{arg3}\n\nSo tell me, are the robots attacking?"

print "\nWow, if #{input} that makes sense about #{arg3}."

#EXTRA FAIL

#This is all falling apart as when an CL argument is passed to the script (into ARGV), the first argument is assumed 