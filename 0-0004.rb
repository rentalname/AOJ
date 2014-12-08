# Simultaneous Equation

=begin
  A1*x + B1 * y = Z1
  A2*x + B2 * y = Z2

  |A1 B1| |x| = |Z1|
  |A2 B2| |y| = |Z2|

  |x| = |A1 B1|^-1 |Z1|
  |y|   |A2 B2|    |Z2| 
=end

require 'matrix'
while line = ARGF.gets do
  a1,b1,z1,a2,b2,z2 = line.split.map(&:to_i)
  m1 = Matrix.column_vector [z1,z2]
  m2 = Matrix[[a1,b1],[a2,b2]]
  result  = (m2 ** -1) * m1
  puts result.map{|e| "%5.3f" % e}.column(0).to_a.join("\s") 
end
