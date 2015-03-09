<<NOTE.!
単語の検索
  １つの単語 W と文章 T が与えられます。T の中にある W の数を出力するプログラムを作成して下さい。
  文章 T に含まれるスペースまたは改行で区切られた文字列を単語 Ti とします。すべての Ti において単語 W と同じになるものを数えて下さい。
  なお、大文字と小文字は区別しません。

Constraints
  Wの文字列の長さは10を超えません。
  Tの１行あたりの文字列の長さは1000を超えません。

Input
  １行目に単語 W が与えられます。
  続いて、複数の行にまたがった文章与えられます。END_OF_TEXT という文字列が文章の終わりを示します。

Output
  単語 W の数を出力して下さい。

Sample Input
computer
Nurtures computer scientists and highly-skilled computer engineers
who will create and exploit "knowledge" for the new era.
Provides an outstanding computer environment.
END_OF_TEXT

Sample Output
3

NOTE

$stdin = DATA if $stdin.eof?

target = gets.chomp.upcase

words = []

ARGF.each_line do |line|
  break if line =~ /^END_OF_TEXT$/
  words += line.split.map(&:upcase)
end

puts words.select{|e| e =~ %r/^#{target}$/ }.size

__END__
aaaaaaaaaa
bb bb bb aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa
aaa aaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa
aaaaaaaaaa xxx xxxxxxxxx aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa
aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa b b b b b b b aaaaaaaaaa aaaaaaaaaa
aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaaa a a a a
aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa
aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa a a a a
aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa x
aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa x x x x
aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa x x xaaaaaaaaaa
END_OF_TEXT
