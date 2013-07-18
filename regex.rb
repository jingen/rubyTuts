p /abc/.class
p reg = %r(abc).class
p reg = %r(a.bc)im
subject = "you are
 A
bc stuff."
p result = reg =~ subject
p result
mObject = reg.match subject
p mObject
p mObject[0]
m = %r(<(.+)>(.*)</(.+)>)i
p m
html = "<html>Jingen Lin</html>"
p html
mO = m.match html
p mO
p mO[0]
p mO[1]
p mO[2]
p mO[3]
m = %r(<(?<starttag>.+)>(?<content>.*)</(?<endtag>.+)>)i
mK = m.match html
p mK
p mK[:starttag]
p m.names
p m.named_captures

case gets.chomp
when /\d+/
	p "Is it garfield?"
when /\w+/
	p "It looks like HTML."
else
	p "I don't know what she is."
end
