<<NOTE.!
行列の積

  n×m の行列 A と m×l の行列 B を入力し、それらの積である n×l の行列 C を出力するプログラムを作成してください。行列 C の各要素 cij は次の式で得られます：
  cij=∑k=1maikbkj

  ここで、A、B、C の各要素をそれぞれ aij、bij、cij とします。

Input
１行目に n、m、l が空白区切りで与えられます。
続く行に n×m の行列 A と m×l の行列 B が与えられます。

Output
  n×l の行列 C の要素 cij を出力してください。各行の隣り合う要素を１つの空白で区切ってください。

Constraints
  1≤n,m,l≤100
  0≤aij,bij≤10000

Sample Input
3 2 3
1 2
0 3
4 5
1 2 1
0 3 2

Sample Output
1 8 5
0 9 6
4 23 14

NOTE

require 'matrix'

$stdin = DATA if $stdin.eof?

n, m, l = gets.split.map(&:to_i)

# a = n.times.map do
#       gets.split.map(&:to_i)
#     end
#
# b = m.times.map do
#       gets.split.map(&:to_i)
#     end
#
# ma = Matrix.rows(a)
# mb = Matrix.rows(b)
# mc = ma * mb
#
# mc.row_vectors.each{|row| puts row.to_a.join("\s")}

ma = []
n.times do
  ma << gets.split.map(&:to_i)
end

mb = []
m.times do
  mb << gets.split.map(&:to_i)
end

p ma
p mb

mc = Array.new(n, Array.new(l))


p mc
__END__
3 2 3
1 2
1 3
1 4
2 2 2
4 4 4
