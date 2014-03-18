a = 22
b = 23

tf1 = a != b && a > b

tf2 = a <= b || a % b > 2

tf3 = if a - b > 0 then "a is greater than b" elsif a == b then "a equals b" else "a is less than b" end

puts tf1 ? "The first expression (tf1) is True" : "The first expression (tf1) is False"
puts ''
puts tf2 ? "The second expression (tf2) is True" : "The second expression (tf2) is False"
puts ''
puts tf3