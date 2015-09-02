$stdin = DATA if $stdin.eof?
gets

ARGF.each_line do |line|
  a, b, c =line.split.map(&:to_i).sort
  if (a**2 + b**2) == c**2
    puts "YES"
  else
    puts "NO"
  end
end


__END__
3
4 3 5
4 3 6
8 8 8
