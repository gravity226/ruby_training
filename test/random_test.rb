# Array a - People
# 0 - Name
# 1 - Age
# 2 - Occupation

array_a = [['Tommy', 29, 'Development'],
           ['Becky', 31, 'Project Support'],
           ['Sarah', 28, 'Proposals'],
           ['Chris', 33, 'Intel'],
           ['Andres', 27, 'Engineering']]

# Array b - Actions

array_b = [['Brainstorm'], ['Prep'], ['Prototype'], ['Test 1'], ['Develop'], ['Test 2'], ['Launch']]

outer = 0
array_a.each do |t|
  print "#{outer} - "
  puts "#{t}"
  outer += 1
end

outer = 0
inner = 0
array_a.each do |t|
  inner = 0
  print "#{outer} - "
  t.each do |u|
    print "#{u} "
    inner += 1
  end
  puts ''
  outer += 1
end

puts "Outer: #{outer} - Inner: #{inner}"

puts rand(3)

puts array_a.length

puts rand(array_a.length)