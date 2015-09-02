<<NOTE.!
サイコロ II
  Dice I と同様の方法で、入力された数字の列からサイコロをつくります。

  このサイコロを Dice I の方法で回転させた後の上面と前面の数字が質問として与えられるので、右側の面の数字を答えるプログラムを作成してください。



Input
  １行目に各面の数字が、ラベルの順番に空白区切りで与えられます。
  ２行目に質問の数 q が与えられます。

  続く q 行に質問が与えられます。各質問では上面と前面の数字を表す２つの整数が空白区切りで１行に与えられます。

Output
  各質問ごとに、サイコロの右側の面の数字を１行に出力してください。

Constraints
    0≤ 入力されるサイコロの面の数字 ≤100
    入力されるサイコロの面の数字はすべて異なる
    1≤q≤24

Sample Input
1 2 3 4 5 6
3
6 5
1 3
3 2

Sample Output
3
5
6

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

  def clone
    self.class.new([top, front, right, left, back, bottom])
  end

  def info
    p({ T: top, F: front, R: right, L: left, U: back, B: bottom })
  end
end

$stdin = DATA if $stdin.eof?

dice = Dice.new(gets.split)

gets

patterns = (['N'] * 3 + ['E'] * 3)
ARGF.each_line do |line|
  top, front = line.split
  patterns.permutation do |command|
    test_dice = dice.clone
    command.each do |c|
      test_dice.move(c)
      if test_dice.top == top && test_dice.front == front
        puts test_dice.right
        break
      end
    end
    break if test_dice.top == top && test_dice.front == front
  end
end

__END__
1 2 3 4 5 6
3
6 5
1 3
3 2
