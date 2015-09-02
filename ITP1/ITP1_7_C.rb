<<NOTE.!
表計算
  表計算を行う簡単なプログラムを作成します。
  表の行数rと列数c、r × c の要素を持つ表を読み込んで、各行と列の合計を挿入した新しい表を出力するプログラムを作成して下さい。

Input
  最初の行にrとcが空白区切りで与えられます。続くr行にそれぞれc個の整数が空白区切りで与えられます。

Output
  (r+1) × (c+1) の新しい表を出力して下さい。各行の隣り合う整数は１つの空白で区切って下さい。各行の最後の列としてその行の合計値を、
  各列の最後の行としてその列の合計値を、最後の行・列に表全体の合計値を挿入して下さい。

Constraints
  1 ≤ r, c ≤ 100

Sample Input
4 5
1 1 3 4 5
2 2 2 4 5
3 3 0 1 1
2 3 4 4 6

Sample Output
1 1 3 4 5 14
2 2 2 4 5 15
3 3 0 1 1 8
2 3 4 4 6 19
8 9 9 13 17 56

NOTE
require 'matrix'

$stdin = DATA if $stdin.eof?

r, c = gets.split.map(&:to_i)

a = []
ARGF.each do |line|
  a << line.split.map(&:to_i)
end
p a
table = Matrix[a]

r.times do |i|
  column = table.column(i).to_a[0]
  print column.join("\s")
  print "\s"
  puts  column.inject(:+)
end

c.times do |i|
  print table.row(i).inject(0){|m, row| m + row[i]}
  print "\s"
end

puts table.inject(:+).inject(:+)


__END__
4 5
1 1 3 4 5
2 2 2 4 5
3 3 0 1 1
2 3 4 4 6
