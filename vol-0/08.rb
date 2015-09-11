ARGF.each do |line|
  sum = line.to_i
  count = [*0..9].repeated_permutation(4).map{|p| p.inject(:+) }.count(sum)

  puts count
end
