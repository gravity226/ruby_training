a = 0b1010

puts a

b = 20

c = b.to_s(2)

puts c

puts c.to_i(2)

d = "15"

puts (d.to_i).to_s(2)

e = "32"

puts e.to_i - d.to_i
puts (e.to_i - d.to_i).to_s(2)

f = '1001'
g = '101'

puts f.to_i(2)
puts g.to_i(2)

loop do
  break if b > 15 && b < 25
  puts "hi there; the loop didn't really break"
end

