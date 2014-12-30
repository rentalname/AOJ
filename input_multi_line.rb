require 'stringio'

$stdin = StringIO.new <<-EOS
1
2
3
4
EOS

ARGF.each(&:to_i).with_index do |x, i|
  puts [x, i]
end
