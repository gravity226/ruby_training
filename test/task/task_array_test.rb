assignment_array = [[]]

def count_times (person_array, person)
  num = 0
  times_included = 0
  person_array.each do
    if person[num][0] == person
      times_included += 1
    end
  end
  return times_included
end

puts count_times(assignment_array, 'Tommy')


personnel_array = [['Tommy', 29, 'Development'],
                   ['Becky', 31, 'Project Support'],
                   ['Sarah', 29, 'Proposals'],
                   ['Chris', 33, 'Intel'],
                   ['Andres', 27, 'Engineering']]

def get_person (person_array, num)
  random_num = rand(num)
  puts random_num
  return person_array[random_num][0]
end

num = 0

person = get_person(personnel_array, personnel_array.count)

assignment_array[num].push(person)

assignment_array.each do |t|
  puts t
end

