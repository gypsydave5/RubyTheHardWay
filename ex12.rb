require 'open-uri'
open ("http://gypsydave5.com") do |f|
	f.each_line {|line| p line}
	puts f.base_uri		# <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
	puts f.charset		# "iso-8859-1"
	puts f.content_encoding # []
	puts f.last_modified	# Thu Dec 05 02:45@02 UTC 2002
end

#Extra Credit

#Man, it really doesn't like being redirected from http to https - let's fix that

#Still not good - something to do with SSL

#OK, flipped the URL to my tumblr page... seems to have fixed all that...

# So what's the deal with libraries, require and include?

