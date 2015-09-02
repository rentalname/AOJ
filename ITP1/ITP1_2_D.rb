require "stringio"
$stdin = StringIO.new("5 4 2 2 1")

w, h, x, y, r = gets.split.map(&:to_i)

range_x = ((0+r)..(h-r))
range_y = ((0+r)..(w-r))

answer = (range_x.include?(x) && range_y.include?(y)) ? "Yes": "No"

puts answer
