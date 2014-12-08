require 'stringio'
ARGF = StringIO.new <<EOF
1 + 2
0 ? 0

EOF

ARGF.each_line do |line|
  break if line =~ /\d \? \d/
  puts eval(line)
end
