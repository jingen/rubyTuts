a = {:a =>1, :b=>2,:c=>3,"d"=>4}
p a
b = {a:3,b:4,c:5,d:"6"}
p b
# a = Hash[:a,6,:b,7,:c,8]
# p a

p a.keys
p a.values
p a.has_key? :a
p a.has_key? "a"
p a.has_key? "d"
p a.merge b
p a.select{ |k,v| v > 3}
p a