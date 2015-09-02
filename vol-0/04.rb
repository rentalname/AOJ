require 'matrix'
$stdin = DATA if $stdin.eof?

ARGF.each_line do |line|
  a, b, c, d, e, f = line.split.map(&:to_r)

  mat_a = Matrix[[a, b], [d, e]].inverse
  mat_b = Matrix[[c], [f]]

  mat_s = mat_a * mat_b
  puts mat_s.column(0)
    .to_a
    .map { |v| format('%.3f', v) }
    .join("\s")
end

__END__
1 2 3 4 5 6
2 -1 -2 -1 -1 -5
4 5 6 1 2 3
0 1 1 1 0 3
