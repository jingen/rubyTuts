#!/usr/bin/env ruby

#if
# age = gets.to_i
# output = if age < 10
#   "you are less than 10"
# elsif age < 20
#   "you are less than 20"
# elsif age < 30
#   "you are less than 30"
# else
#   "you are old."
# end

# puts output

print "Tell me a car model:"
car_model = gets.strip

output = case car_model
when "Focus", "Fiesta" then "Ford"
when "Ibiza" then "Seat"
when "Civic" then "Honda"
else "Unknown model"
end

puts "The car company for #{car_model} is " + output