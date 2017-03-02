def clock (sec)
  min = sec/60
  hour = min/60
  if sec < 10
    time_string = "00:00:0#{sec}"
  elsif sec >= 10 && sec < 60
    time_string = "00:00:#{sec}"
  elsif sec >= 60 && sec < 600
    time_string = "00:0#{min}:#{sec-60}"
  elsif sec >= 600 && sec < 3600
    time_string = "00:#{min}:#{sec-60}"
  else
    time_string = "#{hour}:#{min-60}:#{sec-60*60}"
  end
end

puts clock(0)
puts clock(12)
puts clock(66)
puts clock(4000)
