<<NOTE.!
フレームの描画

  以下のような、たて H cm よこ W cm の枠を描くプログラムを作成して下さい。

  ##########
  #........#
  #........#
  #........#
  #........#
  ##########

  上図は、たて 6 cm よこ 10 cm の枠を表しています。

Input
  入力は複数のデータセットから構成されています。各データセットの形式は以下のとおりです：

  H W

  H, W がともに 0 のとき、入力の終わりとします。

  審判データに用いられる入力の条件は、3 ≤ H, W ≤ 100 です。

Output
  各データセットについて、たて H cm よこ W cm の枠を出力して下さい。

  各データセットの後に、１つの空行を入れて下さい。
NOTE

def draw_top(w)
  puts '#' * w
end

def draw_middle(w)
  puts '#' + "#{'.' * (w - 2)}" + '#'
end

alias :draw_bottom :draw_top

def draw_rect(h, w)
  draw_top(w)
  (h - 2).times{ draw_middle(w) }
  draw_bottom(w)
  puts
end

ARGF.each_line do |line|
  height, width = line.split.map(&:to_i)
  break if line =~ /^0 0/
  draw_rect(height, width)
end
