<<NOTE.!
カードゲーム

太郎と花子がカードゲームをする。二人はそれぞれn枚のカードを持っており、nターンの勝負を行う。各ターンではそれぞれ１枚ずつカードを出す。
カードにはアルファベットからなる動物の名前が書かれており、辞書順で大きいものがそのターンの勝者となる。
勝者には３ポイント、引き分けの場合にはそれぞれ１ポイントが加算される。
太郎と花子の手持ちのカードの情報を読み込み、ゲーム終了後のそれぞれの得点を出力するプログラムを作成せよ。

Constraints
  入力で与えられるｎが1000を超えることはない。
  与えられる文字列の長さは100以下であり、アルファベットの小文字のみを含む。

Input
  一行目にカードの数ｎが与えられる。続くn行に各ターンのカードの情報が与えられる。１つ目の文字列が太郎のカードに書かれている文字列、２つ目の文字列が花子のカードに書かれている文字列である。

Output
  １つ目の数字が太郎の得点、２つ目の数字が花子の得点として１行に出力せよ。２つの数字の間に１つの空白を出力せよ。

Sample Input
3
cat dog
fish fish
lion tiger

Sample Output
1 7

NOTE

$stdin = DATA if $stdin.eof?

gets

score_t = 0
score_h = 0

ARGF.each do |line|
  w1, w2 = line.split.map(&:chomp)
  if w1 == w2
    score_t += 1
    score_h += 1
  elsif (w1 <=> w2) == 1
    score_t += 3
  else
    score_h += 3
  end
end

puts "#{score_t} #{score_h}"

__END__
4
a x
a x
x a
a a
