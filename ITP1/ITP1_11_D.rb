<<NOTE.!
サイコロ IV
  DiceIと同様の方法で、入力された数字から n 個のサイコロをつくります。
  これらのサイコロが、全て異なるものかどうかを判定するプログラムを作成してください。
  同一かどうかの判定は Dice III の方法を用います。

Input
  １行目にサイコロの個数 n が与えられます。続く n 行に各サイコロの面の数字が与えられます。
  各サイコロについて各面の数字が、ラベルの順番に空白区切りで１行に与えられます。

Output
  入力されたサイコロがすべて異なる場合 "Yes"、同じものが１組以上含まれる場合 "No" と１行に出力してください。

Constraints
  2≤n≤100
  0≤ 入力されるサイコロの面の数字 ≤100

Sample Input 1
3
1 2 3 4 5 6
6 2 4 3 5 1
6 5 4 3 2 1

Sample Output 1
No

Sample Input 2
3
1 2 3 4 5 6
6 5 4 3 2 1
5 4 3 2 1 6

Sample Output 2
Yes

NOTE
require 'set'
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
    me = faces
    he = other.faces
    me_face_set = me.map{|f| Set[*f]}
    he_face_set = he.map{|f| Set[*f]}
    if Set[*me_face_set] != Set[*he_face_set]
      return false
    end
    commands = (["N"]*3 + ["E"]*3)
    commands.permutation(commands.size).to_a.uniq.each do |com|
      com.each do |c|
        move(c)
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

gets

dices = ARGF.each.map do |line|
  Dice.new(line.split.map(&:to_i))
end

match = dices.combination(2).any? do |da, db|
  da == db
end

puts(match ? "No" : "Yes")

__END__
100
1 2 3 4 5 6
1 2 3 4 6 5
1 2 3 5 4 6
1 2 3 5 6 4
1 2 3 6 4 5
1 2 3 6 5 4
1 2 4 3 5 6
1 2 4 3 6 5
1 2 4 5 3 6
1 2 4 5 6 3
1 2 4 6 3 5
1 2 4 6 5 3
1 2 5 3 4 6
1 2 5 3 6 4
1 2 5 4 3 6
1 2 5 4 6 3
1 2 5 6 3 4
1 2 5 6 4 3
1 2 6 3 4 5
1 2 6 3 5 4
1 2 6 4 3 5
1 2 6 4 5 3
1 2 6 5 3 4
1 2 6 5 4 3
1 3 4 5 6 2
1 3 4 6 5 2
1 3 5 4 6 2
1 3 5 6 4 2
1 3 6 4 5 2
1 3 6 5 4 2
7 2 3 4 5 6
7 2 3 4 6 5
7 2 3 5 4 6
7 2 3 5 6 4
7 2 3 6 4 5
7 2 3 6 5 4
7 2 4 3 5 6
7 2 4 3 6 5
7 2 4 5 3 6
7 2 4 5 6 3
7 2 4 6 3 5
7 2 4 6 5 3
7 2 5 3 4 6
7 2 5 3 6 4
7 2 5 4 3 6
7 2 5 4 6 3
7 2 5 6 3 4
7 2 5 6 4 3
7 2 6 3 4 5
7 2 6 3 5 4
7 2 6 4 3 5
7 2 6 4 5 3
7 2 6 5 3 4
7 2 6 5 4 3
7 3 4 5 6 2
7 3 4 6 5 2
7 3 5 4 6 2
7 3 5 6 4 2
7 3 6 4 5 2
7 3 6 5 4 2
7 2 3 8 5 6
7 2 3 8 6 5
7 2 3 5 8 6
7 2 3 5 6 8
7 2 3 6 8 5
7 2 3 6 5 8
7 2 8 3 5 6
7 2 8 3 6 5
7 2 8 5 3 6
7 2 8 5 6 3
7 2 8 6 3 5
7 2 8 6 5 3
7 2 5 3 8 6
7 2 5 3 6 8
7 2 5 8 3 6
7 2 5 8 6 3
7 2 5 6 3 8
7 2 5 6 8 3
7 2 6 3 8 5
7 2 6 3 5 8
7 2 6 8 3 5
7 2 6 8 5 3
7 2 6 5 3 8
7 2 6 5 8 3
7 3 8 5 6 2
7 3 8 6 5 2
7 3 5 8 6 2
7 3 5 6 8 2
7 3 6 8 5 2
7 3 6 5 8 2
7 9 6 8 3 5
7 9 6 8 5 3
7 9 6 5 3 8
7 9 6 5 8 3
7 3 8 5 6 9
7 3 8 6 5 9
7 3 5 8 6 9
7 3 5 6 8 9
7 3 6 8 5 9
7 3 6 5 8 9
