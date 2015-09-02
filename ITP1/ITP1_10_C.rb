<<NOTE.!
標準偏差
  n 人の学生を含むクラスでプログラミングの試験を行った。
  それぞれの得点をs1, s2 ... snとしたときの、標準偏差を求めるプログラムを作成せよ。

  得点の平均値をｍとすれば、分散α2は以下の式で得られる：
    α2 = (∑ni=1(si - m)2)/n
  分散の正の平方根が標準偏差αとなる。

Input
  複数のデータセットが入力として与えられる。各データセットは以下の形式で与えられる：

学生の数 n
s1 s2 ... sn

n が 0 のとき入力の終わりとする。

Output
  各データセットに対して、標準偏差を１行に出力せよ。ただし、0.0001以下の誤差があってもよい。

Constraints
    入力で与えられる n が1000を超えることはない。
    0 ≤ si ≤ 100

Sample Input
5
70 80 100 90 20
3
80 80 80
0

Sample Output
27.85677655
0.00000000

NOTE
$stdin = DATA if $stdin.eof?

ARGF.each.with_index(1).select{|_, i| i.even? }.each do |line, _|
  points = line.split.map(&:to_f)

  avg = points.inject(:+) / points.size

  a = points.inject(0){|ret, p| ret + (p - avg)**2 / points.size }

  puts Math.sqrt(a)
end

__END__
5
70 80 100 90 20
3
80 80 80
1
100
1
50
1
0
10
0 0 0 0 0 0 0 0 0 0
10
1 34 44 63 30 1 9 53 57 57
10
20 12 52 44 6 9 94 31 67 70
0
