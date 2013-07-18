a = [1,"one", 2, "two", 3, "three"]
# a = a.select{
# 	|iterm|
# 	# iterm.is_a? String
# 	# iterm.is_a? Integer
# 	iterm.is_a? Fixnum
# }
# a = a.reject{
# 	|iterm|
# 	# iterm.is_a? String
# 	# iterm.is_a? Integer
# 	iterm.is_a? Fixnum
# }
aMap = a.map { |element|  element.class}
p a
p aMap