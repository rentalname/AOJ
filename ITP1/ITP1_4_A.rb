require 'stringio'
$stdin = StringIO.new("2 100000009")

# a, b = ARGF.gets.split.map(&:to_i)
#
# print [(a / b), (a % b), "%.15f" % (a.to_f / b)].join(" "), "\n"

a, b = ARGF.gets.split.map(&:to_i)
d = a / b
r = a % b
f = a.to_f / b
printf("%d %d %f\n", d, r, f)
