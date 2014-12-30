require 'stringio'

check = ->(input, output) do
  input.rewind
  output.rewind

  input.each_line do |answer|
    return false unless answer == output.gets
  end
  true
end

input = StringIO.new(<<-EOS)
test
rest
chest
cuby
EOS


output = StringIO.new('', 'a+')

$stdin  = input
$stdout = output

$stdin.each_line do |str|
  puts str
end

$stdout = STDOUT

puts check.(input, output)
