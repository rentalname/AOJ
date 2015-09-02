<<NOTE.!
距離
  ２点 P1(x1, y1), P2(x2, y2) の距離を求めるプログラムを作成せよ。

Input
  x1, y1, x2, y2 （実数）が空白区切りで与えられます。

Output
  P1とP2の距離を実数で１行に出力して下さい。
  0.0001以下の誤差があってもよいものとします。

Sample Input
0 0 1 1

Sample Output
1.41421356

NOTE

$stdin = DATA if $stdin.eof?

x1, y1, x2, y2 = gets.split.map(&:to_f)

puts Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)

__END__
0 0 1 1
