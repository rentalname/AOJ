ar = []
while line = ARGF.gets
  ar << line.to_f
end

ar.sort!
puts ar.last - ar.first