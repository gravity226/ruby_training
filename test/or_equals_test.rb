a = 57

b ||= a

puts "value of b is: #{b}"
puts ''

c = 1
d = 2

d ||= c

puts "value of d is: #{d}"
puts ''

def misc
  puts 'some method'
end

e ||= misc

f = 0

f ||= misc
