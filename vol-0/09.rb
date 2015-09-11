require 'prime'
ARGF.each do |line|
  to = line.to_i
  p Prime.each(to).count
end
