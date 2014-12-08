# Is it a Right Triangle?

ARGF.gets # skip
while line = ARGF.gets do
  a,b,c = line.split.map(&:to_i).sort
  res = (a ** 2) + (b ** 2) == c ** 2
  puts res ?  "YES" : "NO"
end