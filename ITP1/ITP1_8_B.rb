<<NOTE.!
数字の和
  与えられた数の各桁の和を計算するプログラムを作成して下さい。

Input
  複数のデータセットが入力として与えられます。各データセットは１つの整数 x を含む１行で与えられます。
  x は 1000 桁以下の整数です。
  x が 0 のとき入力の終わりとします。このデータセットに対する出力を行ってはいけません。

Output
  各データセットに対して、x の各桁の和を１行に出力して下さい。

Sample Input
123
55
1000
0

Sample Output
6
10
1

NOTE

$stdin = DATA if $stdin.eof?

ARGF.each_line do |line|
  break if line =~ /^0$/
  n = line.each_char.map(&:to_i).inject(&:+)
  puts n
end

__END__
123
0
