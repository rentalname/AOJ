ARGF.each do |line|
  a, b = line.split.map(&:to_i)
  puts a.gcdlcm(b).join("\s")
end
