# Tommy Martin
# March 24, 2014
# This program is meant to assignment a task to a person randomly based
# on how many tasks the person already has.

# Program

class TaskManager
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

  def assignment
    # Array a - People
    # 0 - Name
    # 1 - Age
    # 2 - Occupation

    $personnel_array = [['Tommy', 29, 'Development'],
                       ['Becky', 31, 'Project Support'],
                       ['Sarah', 29, 'Proposals'],
                       ['Chris', 33, 'Intel'],
                       ['Andres', 27, 'Engineering']]

    # Array b - Actions

    $task_array = [['Brainstorm'], ['Prep'], ['Prototype'], ['Test 1'], ['Develop'], ['Test 2'], ['Launch']]

    # Assignment array

    $assignment_array = [[]]
    $num = 0
    $inner_num = 0
    $tolerance = 0
    $person = ''
    $person_array = [[]]

    $task_array.each do |t|
      loop do
        $person_array = Array.new($personnel_array)

        loop do
          @person = get_person($person_array, $person_array.count)

          if count_times($personnel_array, $person) <= $tolerance
            break
          end
          $inner_num += 1
          $tolerance += 1
        end
        var1 = @person
        $assignment_array[$num].push(var1)
        $assignment_array[$num].push(t)
        break
      end
      $num += 1
    end
    return $assignment_array
  end
end

main = TaskManager.new

assignment = main.assignment

assignment.each do |t|
  puts t
end