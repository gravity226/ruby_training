puts "Using Backticks:"
res = %x(time /t)
puts res

puts "Using System:"
res = system "time /t"
puts res