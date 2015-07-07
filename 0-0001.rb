heights = []
while line = ARGF.gets do
	heights << line.to_i
end

heights.sort.reverse[0..2].each{|h|puts h}
