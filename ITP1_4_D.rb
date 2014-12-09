gets
ar = gets.split.map(&:to_i)

min = ar.min
max = ar.max
sum = ar.inject(:+)

puts [min, max, sum].join("\s")
