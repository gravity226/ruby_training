personnel_array = [['Tommy', 29, 'Development'],
                   ['Becky', 31, 'Project Support'],
                   ['Sarah', 29, 'Proposals'],
                   ['Chris', 33, 'Intel'],
                   ['Andres', 27, 'Engineering']]

# Create pool of people and add how many tasks they have
person_pool = Array.new(personnel_array)
x = 0
person_pool.each do
  person_pool[x].push(rand(2))
  x += 1
end

x = 0
puts person_pool[x][3] > person_pool[x + 1][3]

puts ''
puts '---------'

a = "Chris"

b = person_pool.flatten.index(a)

puts b/4
puts 0/4

puts person_pool.count