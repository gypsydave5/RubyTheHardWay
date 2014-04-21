formatter = "%s %s %s %s"
puts formatter % [1, 2, 3, 4]
puts formatter % ["one", "two", "three", "four"]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
	"I had this thing",
	"That you could type up right.",
	"But it didn't sing.",
	"So I said goodnight."
]

# Extra Credit

# I found this cute - I was also surprised to see that the format strings didn't get confused in line 5 