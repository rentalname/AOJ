$stdin = DATA if $stdin.eof?

p ARGF.each.to_a.map(&:chomp).map(&:split).flatten

__END__
5 9
0 0
