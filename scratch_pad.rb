def foo(a: "")
  puts a * 10
end

h = {
  a: "foo",
  b: "boo"
}

foo(h.slice(:a))

$stdin = DATA if $stdin.eof?


__END__
5 9
0 0
