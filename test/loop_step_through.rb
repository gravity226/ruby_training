# up to
10.upto(12) {|i| puts i}

# down to
a = 20
b = 16

a.downto(b) {|x| puts x}

# times
c = 4

c.times {|z| puts "hi there #{z}"}

# step
d = 20
e = 50
f = 5

d.step(e, f) {|y| print "#{y}, "}

# whiles
puts d % e
while d < e
  print 'still true.. '
  print "#{d} % #{e} + #{d} = "
  d = e % d + d
  puts "#{d}"
end

begin
  puts 'this will run at least once...'
  d = e % d + d
end while d < e

# fors
for t in [1, 2, 3]
  print "#{t} "
end
puts ''

for t in [33, 32, 2]
  print "#{t} "
end
puts ''

for t in ["alpha", "bravo", 2]
  print "#{t} "
end
puts ''

array = ["me", "you", e, d, a, b, c, nil]
for t in array
  print "#{t} ~ "
end
puts ''

for t in (1..5)
  print "#{t}`\n"
end

# each
array.each do |t|
  print "#{t} ~ "
end
puts ''

# loop
loop do
  puts 'moving through an infinite loop... better be careful.'
  break
end

# redo, next, break
g = 0
h = 10

while g < h
  g += 1
  redo if g == 1
  next if g == 3
  puts "#{g} "
  break if g == 7
end