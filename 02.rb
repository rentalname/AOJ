$stdin = DATA if $stdin.eof?

puts ARGF.each.map(&:split).map{|arr| arr.map(&:to_i).inject(:+).to_s.size}


__END__
5 7
1 99
1000 999
