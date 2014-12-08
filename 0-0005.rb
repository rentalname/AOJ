# GCD and LCM

while line = ARGF.gets do
	a,b = line.split.map(&:to_i)
	puts a.gcdlcm(b).join("\s")
end