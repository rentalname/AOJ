<<NOTE.!
不足しているカードの発見

  太郎が花子と一緒にトランプ遊びをしようとしたところ、52枚あるはずのカードが n 枚のカードしか手元にありません。これらの n 枚のカードを入力として、足りないカードを出力するプログラムを作成して下さい。

  太郎が最初に持っていたトランプはジョーカーを除く52枚のカードです。

  52枚のカードは、スペード、ハート、クラブ、ダイヤの４つの絵柄に分かれており、各絵柄には13のランクがあります。

Input
  最初の行に太郎が持っているカードの枚数 n (n ≤ 52)が与えられます。

  続いて n 組のカードがそれぞれ１行に与えられます。各組は１つの空白で区切られた文字と整数です。文字はカードの絵柄を表し、スペードが'S'、ハートが'H'、クラブが'C'、ダイヤが'D'で表されています。整数はそのカードのランク(1 ～ 13)を表しています。

Output
  足りないカードをそれぞれ1行に出力して下さい。各カードは入力と同様に１つの空白で区切られた文字と整数です。出力するカードの順番は以下のとおりとします：

  絵柄がスペード、ハート、クラブ、ダイヤの順番で優先的に出力する。
  絵柄が同じ場合は、ランクが小さい順に出力する。

Sample Input
  47
  S 10
  S 11
  S 12
  S 13
  H 1
  H 2
  S 6
  S 7
  S 8
  S 9
  H 6
  H 8
  H 9
  H 10
  H 11
  H 4
  H 5
  S 2
  S 3
  S 4
  S 5
  H 12
  H 13
  C 1
  C 2
  D 1
  D 2
  D 3
  D 4
  D 5
  D 6
  D 7
  C 3
  C 4
  C 5
  C 6
  C 7
  C 8
  C 9
  C 10
  C 11
  C 13
  D 9
  D 10
  D 11
  D 12
  D 13

Sample Output
  S 1
  H 3
  H 7
  C 12
  D 8

NOTE

class Deck
  Suits = %w(S H C D)

  def initialize
    @cards = []
    Suits.each do |suit|
      (1..13).each do |rank|
        @cards << "#{suit} #{rank}"
      end
    end
  end

  def open
    puts @cards
  end

  def delete(suit, rank)
    @cards.delete("#{suit} #{rank}")
  end
end

deck = Deck.new

_ = gets
ARGF.each_line do |line|
  suit, num = line.split
  deck.delete(suit, num.to_i)
end

deck.open
