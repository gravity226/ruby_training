# Tommy Martin
# 3 - 20 - 2014

# This program is intended to subtract two binary numbers.

class BinarySubtraction
  def get_user_input
    puts 'Are your numbers in binary or integer form?'
    puts 'Enter 1, 2, or 3'
    puts '1 - Binary'
    puts '2 - Integer'
    puts '3 - One of each'
    print 'Selection: '
    form = gets

    loop do
      break if form.to_i > 0 && form.to_i < 4

      print 'Please enter 1, 2 or 3: '
      form = gets
      puts ''
    end

    puts ''
    puts 'Please enter your argument in a - b = c form'
    puts ''

    a_type = if form.to_i == 1 then 1 elsif form.to_i == 2 then 2 else print 'a'; num_type.to_i end
    print 'a = '
    a_num = gets

    b_type = if form.to_i == 1 then 1 elsif form.to_i == 2 then 2 else print 'b'; num_type.to_i end
    print 'b = '
    b_num = gets

    @a = [a_num, a_type]
    @b = [b_num, b_type]
  end

  def num_type
    puts ' is in 1-Binary or 2-Integer form?'
    print 'Please select 1 or 2: '
    form = gets

    loop do
      break if form.to_i > 0 && form.to_i < 3

      print 'Please enter 1 or 2: '
      form = gets
      puts ''
    end

    return form
  end

  def string_int_to_int(a)
    return a.to_i
  end

  def string_binary_to_int(a)
    return a.to_i(2)
  end

  def calc_subtraction(a, b)
    return a - b
  end

  def main
    get_user_input
    a = if @a[1] == 1 then string_binary_to_int(@a[0])
          elsif @a[1] == 2 then string_int_to_int(@a[0])
          else puts 'somethings wrong with a here...'
          end
    b = if @b[1] == 1 then string_binary_to_int(@b[0])
        elsif @b[1] == 2 then string_int_to_int(@b[0])
        else puts 'somethings wrong with b here...'
        end
    c = calc_subtraction(a, b)

    return c
  end
end

run_program = BinarySubtraction.new

int_difference = run_program.main
binary_difference = int_difference.to_s(2)

puts ''
puts '-----------------------------------------------------------------'
puts "The difference of the two numbers in binary form is: #{binary_difference}"
puts "The difference of the two numbers in integer form is: #{int_difference}"



