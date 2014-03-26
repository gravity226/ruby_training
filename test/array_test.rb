a = '1'

b = 2

c = [a, b]

puts c[0]

puts c[1]

puts '-----'
puts 'working with d'
d = []

# push
d.push(2)

d.push(0)

d.each do |t|
  puts t
end

# unshift, insert
puts '------'
puts d.empty?
d.unshift(3)
d.insert(2,1)

d.each do |t|
  puts t
end

# include
if !d.include?(4)
  d.unshift(4)
end

d.each do |t|
  print "#{t} "
end
puts ''

# pop, shift, delete_at
d.pop
d.shift
d.delete_at(2)

d.each do |t|
  print "#{t} "
end
puts ''

# delete
d.push(15)
d.unshift(15)

puts 'After the 15 push and unshift...'
puts "--- d[0] = #{d[0]} & d[3] = #{d[3]} ---"

if d.include?(15)
  d.delete(15)
end

d.each do |t|
  print "#{t} "
end
puts ''

# uniq

d.push(12, 14, 3, 55, 12, 24)

d.uniq.each do |t|
  print "#{t} "
end
puts ''
puts '------'

e = [[]]

e[0].push('Tommy')
e[0].push('Jay')
e[0].push('Martin')

e.push(['Tommy', 'ben'])

puts "#{e[0][0]} #{e[0][1]} #{e[0][2]}"

x = 0
f = [['Tommy', 'r', 3], ['frog', 'p', 52]]

f.delete_at(x)

f.each do |t|
  puts t
end