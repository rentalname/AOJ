<<NOTE.!
ミンコフスキー距離

２つのデータがどれだけ似ているかを、それらの距離で測る手法は、クラスタリングや分類など、様々なところで使われています。ここでは、２つの n 次元ベクトル x={x1,x2,...,xn} と y={y1,y2,...,yn} の距離を計算してみましょう。

このようなデータの距離を測る指標のひとつとして、次のミンコフスキー距離が知られています。
Dxy=(∑i=1n|xi−yi|p)1p

p=1 のとき
Dxy=|x1−y1|+|x2−y2|+...+|xn−yn|

となり、これはマンハッタン距離とよばれます。

p=2 のとき
Dxy=(|x1−y1|)2+(|x2−y2|)2+...+(|xn−yn|)2−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−√

となり、これは一般的に使われるユークリッド距離になります。

p=∞ のとき

Dxy=maxni=1(|xi−yi|)


となり、これはチェビシェフ距離と呼ばれます。

２つの n 次元ベクトルが与えられるので、p がそれぞれ 1、2、3、∞ のミンコフスキー距離を求めるプログラムを作成してください。
Input
  １行目に整数 n が与えられます。２行目にベクトル x の要素 {x1,x2,...xn}、３行目にベクトル y の要素 {y1,y2,...yn} が空白区切りで与えられます。入力はすべて整数値です。

Output
  p がそれぞれ 1、2、3、∞ の順番にそれぞれ１行に距離を出力してください。ただし、0.00001 以下の誤差があってもよいものとします。

Constraints
    1≤n≤100
    0≤xi,yi≤1000

Sample Input
3
1 2 3
2 0 4

Sample Output
4.000000
2.449490
2.154435
2.000000

NOTE

$stdin = DATA if $stdin.eof?

gets
xn = gets.split.map(&:to_i)
yn = gets.split.map(&:to_i)

[1,2,3].each do |p|
  sum = [xn, yn].transpose.map do |x,y|
    (x - y).abs ** p
  end.inject(0.0, &:+)

  puts sum ** (1.0/p)
end

pi = [xn, yn].transpose.map do |x,y|
  (x - y).abs
end

puts pi.max
__END__
3
1 2 3
2 0 4
