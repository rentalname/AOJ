ARGF.each_line do |line|
  break if line =~ /\?/
  puts eval(line)
end
