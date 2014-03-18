require 'Date'

current_day = 14
event_day = 15
current_month = 3
event_month = 3
current_year = 2014
month_num = event_month
total_days_left = 0
if month_num > current_month
  until (month_num - 1) < (current_month + 1)  do
    puts month_num
    total_days_left += Date.civil(2014, month_num, -1).day
    puts total_days_left
    month_num -= 1
  end

  elsif month_num < current_month
    until (month_num + 1) > (current_month - 1)  do
      puts month_num
      total_days_left += Date.civil(2014, month_num, -1).day
      puts total_days_left
      month_num += 1
    end
end

puts '-------'

# final calculation
total_days_left = total_days_left + event_day + (Date.civil(current_year, current_month, -1).day - current_day)

puts total_days_left

