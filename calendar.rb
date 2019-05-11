require 'date'

today = Date.today
title = today.strftime('%B %Y')
start_date = Date.new(today.year, today.month, 1)
end_date = (start_date >> 1) - 1
start_yobi = start_date.strftime('%w').to_i

ans = '   ' * start_yobi
(1..end_date.day).each_with_index do |d, i|
  i += start_yobi
  ans += "\n" if (i % 7).zero? && i != 0
  ans += d >= 10 ? "#{d} " : " #{d} "
end

puts title.center(21)
puts 'Su Mo Tu We Th Fr Sa'
puts ans
