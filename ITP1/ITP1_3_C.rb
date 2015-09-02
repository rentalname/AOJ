require 'stringio'

$stdin = StringIO.new(<<-RRR)
3 2
2 2
5 3
0 0
RRR

ARGF.each_line do |line|
  arr = line.split.map(&:to_i).sort
  break if arr.all?(&:zero?)
  puts arr.join("\s")
end
