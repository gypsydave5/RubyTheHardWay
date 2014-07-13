module Sysword
	def self.max_fixnum
		2**((0.size * 8) -2) -1
	end
	def self.min_fixnum
		-2**((0.size * 8) -2)
	end
	def self.system_word
		0.size * 8
	end
end

def errors (input)
	if input.include?("wait")
		return "You wait, but Gandalf does not return..."
	end
	error_strings = [
		"I'm not sure what you're trying to do here...",
		"< ArgumentError... or something like that. Try again",
		"See, I know what you're trying to say with '#{input}'. It's just the program doesn't.",
		"'#{input}', It's good, but it's not right..."
	]
	error_strings.shuffle.first
end

def prompt
	print ">"
end

def dog
	puts %{
You're in a room...
... a room called 'Dog'

There are only two ways out of this room - one with
'super' over the door, and the other with 'class'

So what's it to be? Super or class?
	}
	while true
		prompt
		next_move = gets.chomp.downcase

		if next_move.include?("super")
			animal
		elsif next_move.include?("class")
			_class
		else
			puts errors(next_move)
		end
	end
end

def _class
	puts %{
Woah - it's a huge room! The biggest room you ever saw... there are hundreds of
tiny blue doors everywhere - but for some reason the only ones you can see well
enough are called 'Animal', 'Dog', 'BasicObject'... there are a few others too
(maybe you can guess them clever dog!). There's still a bigger door with 'super'
over it.

So which door will you go through Fido?
}
	while true
		prompt
		next_move = gets.chomp.downcase

		if next_move.include?("super")
			_module
		elsif next_move.include?("integer")
			_integer
		elsif next_move.include?("fixnum")
			_fixnum
		elsif next_move.include?("numeric")
			_numeric
		elsif next_move.include?("object")
			_object
		elsif next_move.include?("basicobject")
			_basicobject
		elsif next_move.include?("animal")
			animal
		elsif next_move.include?("dog")
			dog
		elsif next_move.include?("class")
			puts %{

You go through the door market class and, after a long journey, end up where you
started...

( Hah - class is an instance of class...
... and is also the class of class...
... classy...)

			}
			_class
		else
			puts "Nope, I've got nothing..."
		end
	end
end

def animal
	puts %{
You're in a kinda furry room - if that makes any sense. There are quite a few
doors going out of here... including one called 'Dog'. There's also a big old door
here marked 'super' and another marked 'class' like before.

So what now?
}
	while true
		prompt
		next_move = gets.chomp.downcase
		if next_move.include?("super")
			_object
		elsif next_move.include?("class")
			_class
		elsif next_move.include?("dog")
			dog
		else
			puts errors(next_move)
		end
	end
end

def _object
	puts %{
It's a big room - maybe the biggest yet (although there might be a bigger one
out there...). It's all very shiny and... solid looking in here. Hard surfaces
all around.  If you're looking for a way down you can go to 'Numeric' and
'Animal' and thousands more.  There's a big door marked 'Super' here, as well as
another little door marked 'Class'.

So what now?
}
	while true
		prompt
		next_move = gets.chomp.downcase
		if next_move.include?("super")
			_basic_object
		elsif next_move.include?("class")
			_class
		elsif next_move.include?("animal")
			animal
		elsif next_move.include?("numeric")
			_numeric
		elsif next_move.include?("module")
			_module
		else
			puts errors(next_move)
		end
	end
end

def _basic_object
	puts %{
Simplicity is the hallmark of this room - you really can't get anything as basic
as this in a real room. There aren't really any walls here, or anything else
although the only way out is through a door marked 'Object' and another marked
'Class' - feels like you're about as high as you can go.

So now what?
}
	while true
		prompt
		next_move = gets.chomp.downcase
		if next_move.include?("object")
			_object
		elsif next_move.include?("class")
			_class
		else
			puts errors(next_move)
		end
	end
end

def _module
	puts %{
Before you could tell the difference between things, you had to be this thing
that could be added to things to tell the difference between things. And the
thing that you are? Your're somthing that can tell the difference between
things, because you're not the things that can tell the difference between
things. Your're different - this room isn't classy, it's more like it's made by
Ikea. It's modular. And to get out there's a chute marked 'Class', another big
golden door with 'Super' and another, almost identical door marked 'Class'.

So now what?
}
	while true
		prompt
		next_move = gets.chomp.downcase
		if next_move.include?("super")
			_object
		elsif next_move.include?("class")
			puts %{

So the class of module is class, and the subclass of module is class...

Deal with it.

			}
			_class
		else
			puts errors(next_move)
		end
	end
end

def _numeric
	puts %{
Have you ever seen the classic 90s film 'Hackers'? You know, with Angelina Jolie
and the guy from Trainspotting and the other guy from Scream? Probably not,
Fido, as you're a dog and a highly fictional one at that. But this room sort of
looks like the bad CG from that film's depiction of THE INTERNET - lots of
numbers adnd formulae and other stuff floating around your head. In cerise and
vermillion and other colours that shouldn't go together. Exits include another
big door called 'Super' another 'Class' and a small door with 'Integer' over the
top'

(Hackers even has The Bunk from The Wire in it. No really.)

Do what thou wilt.
}
	while true
		prompt
		next_move = gets.chomp.downcase
		if next_move.include?("super")
			_object
		elsif next_move.include?("class")
			_class
		elsif next_move.include?("integer")
			_integer
		else
			puts errors(next_move)
		end
	end
end

def _integer
	puts %{
Things are settling down in numberland... looking up all the formulae and weird
stuff are disappearing and you're left with... well, with numbers. Just whole
numbers at that - everything that's rational and decimal has gone off somewhere
else.

You feel like you're nearing the end of your quest... but to make things tricky,
we're going to have to test you. Under your nose is the door marked 'Fixnum',
but you can only pass if give a number that's a Ruby Fixnum. And that's entirely
dependant on your system's word size (and even I don't know that).

If you'd still like to wander around, there are doors marked 'Super' and 'Class'
much as before.

Make your choice...
}

	while true
		prompt
		next_move = gets.chomp.downcase
		if next_move.include?("super")
			_numeric
		elsif next_move.include?("class")
			_class
		elsif next_move.to_i.to_s == next_move
			endgame (next_move.to_i)
		elsif next_move.to_f.to_s == next_move
			endgame (next_move.to_f)
		else
			puts errors(next_move)
		end
	end
end

def endgame(number)
	if number.class == Fixnum
		puts %{
Well done, Fido! Your quest to become a number instead of a name has been
successful - and not just any number - a Ruby Fixnum according to your system's
word size. You could've chosen an integer between #{Sysword.min_fixnum} and
#{Sysword.max_fixnum}, because yoursystem's word size is #{Sysword.system_word}
(go do some maths now to find out why...)
		}
	Process.exit(0)
	elsif number.class == Bignum
		puts %{
Well, it was a nice try, wasn't it? But you got too big for your boots Fido
- you ended up being a Bignum, larger than your systems word size, which is
(incidentally), #{Sysword.system_word}. Don't get too down, just try harder next
time. and do some maths.
		}
	Process.exit(0)
	elsif number.class == Float
		puts %{
Did we not tell you to pick an Integer? You're in the Integer room after
all. But noooo, Fido, You had to be clever and start messing around with
Floats. Well, you lose Fido. You lose and it's all over and you don't even
get to find out how big your systems word size is. Heck, a clever-clogs like
you probably already knows...
		}
	Process.exit(0)
	else
		puts %{
The game's over -- thankyou for playing!
		}
	Process.exit(0)
	end
end

def start_game
	puts %{
You're a dog, called Fido. But you've always wanted more - you want to be
a name, not a number. Go, quest Fido along the paths of class and instance
inheritance to find your way to being a number...  }
	dog
end

start_game