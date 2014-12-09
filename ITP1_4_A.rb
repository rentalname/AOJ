require 'stringio'
$stdin = StringIO.new("2 100000009")

a, b = ARGF.gets.split.map(&:to_i)

puts [(a / b), (a % b), "%.15f" % (a.to_f / b)].join(" ")

