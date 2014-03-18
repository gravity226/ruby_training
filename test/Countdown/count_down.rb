require 'Date'

class CountDown
  def initialize(curr_mon, curr_day, curr_year)
    @curr_mon = curr_mon.to_i
    @curr_day = curr_day.to_i
    @curr_year = curr_year.to_i
  end

  def calc_time_left(mon, day, year)
    @months_left = mon.to_i - @curr_mon
    @days_left = day.to_i - @curr_day
    @years_left = year.to_i - @curr_year

    puts "Months left: #{@months_left} - Days left: #{@days_left} - Years left: #{@years_left}"
    calc_days_left(mon, year)
    puts "Total number of days left: #{@total_days_left}"
  end

  def calc_days_left(mon, year)
    month_num = mon.to_i #starts at the month of event
    year_num = year.to_i #starts at the year of event

    @total_days_left = 0

    if month_num > @curr_mon
      until month_num < (@curr_mon + 1)  do
        @total_days_left += Date.civil(@curr_year, month_num, -1).day
        month_num -= 1
      end

    elsif month_num < @curr_mon
      until month_num > @curr_mon  do
        @total_days_left -= Date.civil(@curr_year, month_num, -1).day
        month_num += 1
      end
    end

    until year_num > @years_left do
      @total_days_left += 365
      year_num += 1
    end

    @total_days_left += @days_left
  end
end

n = Time.now

puts Date.civil(n.year, n.month, -1).day

puts "Today is: #{n.month} - #{n.day} - #{n.year}"
puts ""
puts "Please enter the date of the event"
print "Month: "
mon = gets
print "Day: "
day = gets
print "Year: "
year = gets
puts ""

time_left = CountDown.new(n.month, n.day, n.year)
time_left.calc_time_left(mon, day, year)