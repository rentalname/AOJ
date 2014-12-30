ARGF.each_line do |line|
  h, w = line.split.map(&:to_i)
  break if (h == 0) && (w == 0)
  i = 0
  loop do
    i += 1
    if i > h
      puts
      break
    elsif i.odd?
      w.times{|n| print n.odd? ? "." : "#"}
      puts
    else
      w.times{|n| print n.odd? ? "#" : "."}
      puts
    end
  end
end
