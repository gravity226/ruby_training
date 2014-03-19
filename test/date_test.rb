require 'Date'
a = 3
b = 19
c = 2014

d = Date.new(c, a, b)
e = Date.new(2014, 4, 26)


puts (e - d).to_i

