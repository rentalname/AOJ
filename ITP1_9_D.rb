<<NOTE.!
文字列変換
  文字列 str に対して、与えられた命令の列を実行するプログラムを作成してください。命令は以下の操作のいずれかです：
    print a b: str の a 文字目から b 文字目までを出力する。
    reverse a b: str の a 文字目から b 文字目までを逆順にする。
    replace a b p: str の a 文字目から b 文字目までを p に置き換える。

ここでは、文字列 str の最初の文字を 0 文字目とします。

Input
  1 行目に文字列 str が与えられます。str は英小文字のみ含みます。2 行目に命令の数 q が与えられます。続く q 行に各命令が上記の形式で与えられます。

Output
  各 print 命令ごとに文字列を１行に出力してください。

Constraints
  1≤strの長さ≤1000
  1≤q≤100
  0≤a≤b<strの長さ
  replace 命令では b−a+1=pの長さ

Sample Input 1
abcde
3
replace 1 3 xyz
reverse 0 2
print 1 4

Sample Output 1
xaze

Sample Input 2
xyz
3
print 0 2
replace 0 2 abc
print 0 2

Sample Output 2
xyz
abc

NOTE

class StringDSL
  attr_reader :str
  def initialize(str)
    @str = str
  end

  def print(a, b)
    puts str[a,b]
  end

  def replace(a, b, p)
    str[a,b] = p
  end

  def reverse
    str[a,b] = str[a,b].reverse
  end
end

$stdin = DATA if $stdin.eof?

sd = StringDSL.new(gets.chomp)

gets

ARGF.each do |line|
  op, a, b, c = line.chomp.split
  a, b = [a, b].map(&:to_i)
  puts op, a, b, c
  if c
    sd.send(op, a, b, c)
  else
    sd.send(op, a, b)
  end
end

__END__
xyz
3
print 0 2
replace 0 2 abc
print 0 2
