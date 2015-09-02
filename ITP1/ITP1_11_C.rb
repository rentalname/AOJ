<<NOTE.!
サイコロ III
  DiceIと同様の方法で、入力された数字から２つのサイコロをつくります。
  これらが同一のものか判定するプログラムを作成してください。
  DiceIの方法でサイコロを回転させ、２つのサイコロのそれぞれの６方向から見た数字が
  全て一致するとき、同一のサイコロとみなします。

Input
  １行目に１つ目のサイコロの各面の数字が、ラベルの順番に空白区切りで与えられます。
  ２行目に２つ目のサイコロの各面の数字が、ラベルの順番に空白区切りで与えられます。

Output
  ２つのサイコロが同一ならば "Yes" と、異なるならば "No" と１行に出力してください。

Constraints
  0≤ 入力されるサイコロの面の数字 ≤100

Sample Input 1
1 2 3 4 5 6
6 2 4 3 5 1

Sample Output 1
Yes

Sample Input 2
1 2 3 4 5 6
6 5 4 3 2 1

Sample Output 2
No

NOTE

class Dice
  attr_accessor :faces

  # |T F L|
  # |B U R|
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

  def ==(other)
    commands = (["N"]*3 + ["E"]*3)
    0.upto(commands.size) do |r|
      commands.permutation(r).each do |c|
        move(c.join)
        return true if faces == other.faces
      end
    end
    false
  end

  def clone
    self.class.new([top, front, right, left, back, bottom])
  end

  def info
    p({ T: top, F: front, R: right, L: left, U: back, B: bottom })
  end
end

$stdin = DATA if $<.eof?

dice_a = Dice.new(gets.split)
dice_b = Dice.new(gets.split)

puts(dice_a == dice_b ? "Yes" : "No")

__END__
1 2 3 4 5 6
6 2 4 3 5 1
