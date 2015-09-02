<<NOTE.!
サイコロ I
  次の展開図から得られるサイコロを転がすシミュレーションを行うプログラムを作成してください。
  サイコロの各面には図のとおりに 1 から 6 のラベルが割りあてられています。

  + http://judge.u-aizu.ac.jp/onlinejudge/IMAGE2/ITP1_11_A_1.png
  + http://judge.u-aizu.ac.jp/onlinejudge/IMAGE2/ITP1_11_A_2.png

  入力としてサイコロの各面のラベルに対応する数字と、転がす命令の列が与えられるので、サイコロの上面の数字を出力してください。シミュレーションの初期状態は、図のとおりのラベルの位置でサイコロが置かれているものとします。

Input
  １行目に各面の数字が、図に示すラベルの順番に空白区切りで与えられます。

  ２行目に命令を表す１つの文字列が与えられます。命令はそれぞれ図に示す４方向を表す文字 E、N、S、W を含む文字列です。

Output
  すべての命令を実行した後のサイコロの上面の数を１行に出力してください。

Constraints
    0≤ 入力されるサイコロの面の数字 ≤100
    0≤ 命令を表す文字列の長さ ≤100

Note
  続くシリーズ Dice III, Dice IV では、複数のサイコロを扱うので、サイコロをクラスや構造体で作成しておきましょう。

Sample Input 1
1 2 4 8 16 32
SE

Sample Output 1
8

各面に 1, 2, 4, 8, 16, 32 と書かれたサイコロを S の方向に転がした後、E の方向に転がすと、上面の数字が 8 になります。


Sample Input 2
1 2 4 8 16 32
EESWN

Sample Output 2
32

NOTE

class Dice
  attr_accessor :faces

  #|T F L|
  #|B U R|
  def initialize(faces)
    top, front, right, left, back, bottom = faces
    @faces = [[top, bottom], [front, back], [left, right]]
  end

  def move(commands)
    commands.split('').each do |com|
      case com.upcase.to_sym
      when :E
        faces[0], faces[2] = faces[2], faces[0].reverse
      when :W
        faces[0], faces[2] = faces[2].reverse, faces[0]
      when :N
        faces[0], faces[1] = faces[1], faces[0].reverse
      when :S
        faces[0], faces[1] = faces[1].reverse, faces[0]
      end
    end
  end

  def method_missing(face)
    if %i(top bottom front back left right).include? face
      {
        top:    faces[0][0],
        bottom: faces[0][1],
        front:  faces[1][0],
        back:   faces[1][1],
        left:   faces[2][0],
        right:  faces[2][1]
      }[face]
    else
      super
    end
  end

  def info
    p({ T: top, F: front, R: right, L: left, U: back, B: bottom })
  end
end

$stdin = DATA if $stdin.eof?

dice = Dice.new(gets.split)
dice.move(gets.strip)

puts dice.top
__END__
1 2 4 8 16 32
SE
