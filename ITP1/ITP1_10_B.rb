<<NOTE.!
三角形
  三角形の２辺 a, b とその間の角 C から、その三角形の面積 S、周の長さ L,
  a を底辺としたときの高さ h を求めるプログラムを作成して下さい。

Input
  a の長さ, b の長さ, Cの大きさ（度）（整数）が空白区切りで与えられます。

Output
  S, L, h をそれぞれ1行に出力して下さい。0.0001以下の誤差があってもよいものとします。

Sample Input
4 3 90

Sample Output
6.00000000
12.00000000
3.00000000

NOTE

$stdin = DATA if $stdin.eof?

a, b, c = gets.split.map(&:to_i)

puts a * b * Math.sin(c * Math::PI / 180) / 2
puts a + b + Math.sqrt(a**2 + b**2 - (2 * a * b * Math.cos(c * Math::PI / 180)))
puts b * Math.sin(c * Math::PI / 180)

__END__
4 3 90
