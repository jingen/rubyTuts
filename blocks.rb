#!/usr/bin/env ruby
def form &block #not block, but &block (take block of code as an argument)
	puts "<form>"
	yield if block_given?
	puts "</form>"
end

def form_with_proc p
	puts "<form>"
	# p.call
	p.call true
	puts "</form>"
end

def paragraph text
	puts "<p>" + text + "</p>"
end

def blockquote text
	puts "<blockquote>" + text + "</blockquote>"
end

# execute

# form do
# 	paragraph "This is a paragraph"
# 	blockquote "This is a quote from Shakespeare"
# end

# form



# myproc =  proc do |only_quotes|
# lambda vs proc : lambd 's arguments has been passed correctly'
myproc =  lambda do |only_quotes|
	p only_quotes
	paragraph "This is a paragraph" unless only_quotes
	blockquote "This is a quote from Shakespeare"
end

form_with_proc myproc