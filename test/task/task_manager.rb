# Tommy Martin
# March 24, 2014
# This program is meant to assignment a task to a person randomly based
# on how many tasks the person already has.

# Array a - People
# 0 - Name
# 1 - Age
# 2 - Occupation

personnel_array = [['Tommy', 29, 'Development'],
           ['Becky', 31, 'Project Support'],
           ['Sarah', 29, 'Proposals'],
           ['Chris', 33, 'Intel'],
           ['Andres', 27, 'Engineering']]

# Array b - Actions

task_array = [['Brainstorm'], ['Prep'], ['Prototype'], ['Test 1'], ['Develop'], ['Test 2'], ['Launch']]

# Assignment array

assignment_array = [[]]

# Program

def get_person (person_array, num)
  random_num = rand(num)
  puts random_num
  return person_array[random_num][0]
end

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

num = 0
inner_num = 0
tolerance = 0

task_array.each do |t|
  loop do
    person_array = Array.new(personnel_array)

    loop do
      person = get_person(person_array, personnel_array.count)

      if count_times(personnel_array, person) <= tolerance
        assignment_array[num].push(person)
        assignment_array[num].push(t)
        break
      end
      inner_num += 1
    end
    tolerance += 1
    break
  end
  num += 1
end
