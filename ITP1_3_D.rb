require 'stringio'
$stdin = StringIO.new("5 14 80")

a, b, c = ARGF.gets.split.map(&:to_i)

x = 0
(a..b).each do |n|
	x = x.succ if (c % n) == 0
end

puts x
