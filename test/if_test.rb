a = 25
b = 23

tf1 = a != b && a > b

tf2 = a <= b || a % b > 2

puts tf1 ? "The first expression (tf1) is True" : "The first expression (tf1) is False"
puts ''
puts tf2 ? "The second expression (tf2) is True" : "The second expression (tf2) is False"
