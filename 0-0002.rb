# Digit Number

while line = ARGF.gets do
  a,b = line.split.map(&:to_i)
  puts (a + b).to_s.length
end