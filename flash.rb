text = $stdin.read
words = 0
total_time = 0.0
text.split.each do |x|
  width = 64
  print "\r" + x.center(width)
  factor = if x['.'] || x['?']
    2.0
  elsif x[','] || x[':'] || x[';']
    1.5
  else
    1
  end
  time = 0.08 * factor
  sleep time
  total_time += time
  words += 1
end
puts "\n"
puts "Words: #{words}"
puts "Total time: #{total_time}"
puts "WPM: #{words / total_time * 60}"