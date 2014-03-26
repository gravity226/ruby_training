# Tommy Martin
# March 24, 2014
# This program is meant to assignment a task to a person randomly based
# on how many tasks the person already has.

personnel_array = [['Tommy', 29, 'Development'],
                   ['Becky', 31, 'Project Support'],
                   ['Sarah', 29, 'Proposals'],
                   ['Chris', 33, 'Intel'],
                   ['Andres', 27, 'Engineering']]

task_array = ['Brainstorm', 'Prep', 'Prototype', 'Test 1', 'Develop', 'Test 2', 'Launch']

assignment_array = Array.new

# Randomly generate person, parameter is Array of people to choose from
def get_person (person_array)
  num = person_array.count
  random_num = rand(num)
  return person_array[random_num][0]
end

# Modify Array to the people who have the fewest tasks
def modify_pool (people_array)
  x = 0

  while x < people_array.count - 1
    if people_array[x][3] > people_array[x + 1][3]
      people_array.delete_at(x)
    elsif people_array[x][3] < people_array[x + 1][3]
      people_array.delete_at(x + 1)
    else
      x += 1
    end
  end
  return people_array
end

# Create pool of people and add how many tasks they have
person_pool = Array.new(personnel_array)
x = 0
person_pool.each do
  person_pool[x].push(0)
  puts person_pool[x][3]
  x += 1
end

# How many tasks for each person..
x = 0
person_pool.each do
  puts "Person: #{person_pool[x][0]} - Tasks: #{person_pool[x][3]}"
  x += 1
end

puts ''
puts '------------'
puts ''

task_array.each do |t|
  modify_pool_var = Array.new(person_pool)
  modify_pool_var = modify_pool(modify_pool_var)
  chosen_person = get_person(modify_pool_var)
  x = person_pool.index(chosen_person).to_i
  person_pool[x][3] += 1
  puts "Random person: #{chosen_person}"

  assignment_array.push([chosen_person, t])
end

puts ''
assignment_array.each_index do |t|
  print "#{assignment_array[t][0]} - #{assignment_array[t][1]}"
  puts
end

