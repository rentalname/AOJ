<<NOTE.!
シャッフル
  １つのアルファベットが描かれた n 枚のカードの山をシャッフルします。
  1回のシャッフルでは、下から h 枚のカードをまとめて取り出し、それを残ったカードの山の上に積み上げます。
  カードの山は以下のように１つの文字列で与えられます。
  abcdeefab
  最初の文字が一番下にあるカード、最後の文字が一番上にあるカードを示しています。
  例えば、これを h が 4 でシャッフルすると、最初の4文字 abcd が、残りの文字 eefab の末尾へ連結されるので以下のようになります：
  eefababcd
  このシャッフルを何回か繰り返します。
  カードの山の最初の並び（文字列）と h の列をを読み込み、最後の並び（文字列）を出力するプログラムを作成して下さい。

Constraints
  文字列の長さは200を超えない
  シャッフルの回数は100を超えない

Input
複数のデータセットが入力として与えられます。各データセットは以下の形式で与えられます：

最初の並びを表す文字列
シャッフル回数 m
h1
h2
  .
  .
hm

最初の並びを表す文字列が "-" のとき入力の終わりとします。

Output
  各データセットに対して、最後の並び（文字列）を１行に出力して下さい。

Sample Input
aabc
3
1
2
1
vwxyz
2
3
4
-

Sample Output
aabc
xyzvw

NOTE

$stdin = DATA if $stdin.eof?

ARGF.each do |line|
  break if line =~ /-/
  kitty = line.chomp if line =~ /[a-zA-Z]/
  count = gets.to_i if line =~ /[a-zA-Z]/
  count.times do
    at = gets.to_i
    left = kitty[0..(at-1)]
    right = kitty[at..-1]
    kitty = right + left
  end
  puts kitty
end

__END__
aabc
3
1
2
1
vwxyz
2
3
4
-
