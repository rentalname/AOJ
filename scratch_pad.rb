if $stdin.eof?
  $stdin = DATA
end
require 'matrix'

m = Matrix[[[1,2],[3,4]], [[1,2],[5,6]]]


p m

__END__
5 9
0 0
