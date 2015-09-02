<<NOTE.!
チェスボードの描画

  以下のような、たてH cm よこ W cm のチェック柄の長方形を描くプログラムを作成して下さい。

  #.#.#.#.#.
  .#.#.#.#.#
  #.#.#.#.#.
  .#.#.#.#.#
  #.#.#.#.#.
  .#.#.#.#.#

  上図は、たて 6 cm よこ 10 cm の長方形を表しています。

  長方形の左上が "#" となるように描いて下さい。

Input
  入力は複数のデータセットから構成されています。各データセットの形式は以下のとおりです：

  H W

  H, W がともに 0 のとき、入力の終わりとします。

Output
  各データセットについて、たて H cm よこ W cm の枠を出力して下さい。

  各データセットの後に、１つの空行を入れて下さい。
  Constraints

  H, W ≤ 300
NOTE

def draw_board(h, w, black: "#", white: ".")
  str = "#{black}#{white}".reverse!
  h.times do
    puts (str.reverse! * w)[0..(w-1)]
  end
  puts
end

ARGF.each_line do |line|
  height, width = line.split.map(&:to_i)
  break if line =~ /^0 0/
  draw_board(height, width)
end
