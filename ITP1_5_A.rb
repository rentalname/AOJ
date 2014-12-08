require 'stringio'
$stdin = StringIO.new <<EOF
1 1
0 0
EOF

def print_rect(h, w)
  h.times do
    puts "#" * w
  end
  puts
end

ARGF.each_line do |line|
  h, w = line.split.map(&:to_i)
  break if [h, w].all?(&:zero?)
  print_rect h, w
end
