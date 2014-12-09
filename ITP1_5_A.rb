def print_rect(h, w)
  h.times do
    puts "#" * w
  end
  puts
end

ARGF.each_line do |line|
  break if line =~ /0 0/
  h, w = line.split.map(&:to_i)
  print_rect(h, w)
end
