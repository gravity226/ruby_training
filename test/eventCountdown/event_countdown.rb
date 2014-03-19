# Tommy Martin
# 3/19/2014

# Date countdown:
# This application was developed to allow a user to input a date of an event
# and output how many days and weeks were left until the event.

require 'Date'

n = Time.now
todays_date = Date.new(n.year, n.month, n.day)

puts "Today is: #{n.month} - #{n.day} - #{n.year}"
puts ""
puts "Please enter the date of the event"
print "Month: "
event_mon = gets
print "Day: "
event_day = gets
print "Year: "
event_year = gets
puts ""

event_date = Date.new(event_year.to_i, event_mon.to_i, event_day.to_i)

days_left = event_date - todays_date

puts "Days left until the event: #{days_left.to_i}"
puts "(includes today and the day of the event)"
puts ''
puts "#{(days_left.to_i / 7).to_i} weeks, #{(days_left.to_i % 7)} days"

