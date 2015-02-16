<<NOTE.!
大文字と小文字の入れ替え

与えられた文字列の小文字と大文字を入れ替えるプログラムを作成してください。
Input

文字列が1行に与えられます。
Output

与えられた文字列の小文字と大文字を入れ替えた文字列を出力して下さい。アルファベット以外の文字はそのまま出力して下さい。
Constraints

    入力される文字列の長さ < 1200

Sample Input

fAIR, LATER, OCCASIONALLY CLOUDY.

Sample Output

Fair, later, occasionally cloudy.

NOTE

$stdin = DATA if $stdin.eof?

puts gets.swapcase

__END__
fAIR, LATER, OCCASIONALLY CLOUDY.
