while line = ARGF.gets do
  height, width = line.split.map(&:to_i)
  break if height == 0 && width == 0
  puts '#' * width
  (height-2).times{
    puts '#' + '.' * (width-2) + '#'
  }
  puts '#' * width
  puts ''
end
