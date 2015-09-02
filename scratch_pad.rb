class Hoo
  def hoo
    puts 111
  end

  private
  def hoo
    puts 222
  end
end

Hoo.hoo
$stdin = DATA if $stdin.eof?


__END__
5 9
0 0
