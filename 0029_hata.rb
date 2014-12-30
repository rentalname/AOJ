line = gets.chomp
a = line.split(' ')
long = ""
count = Hash.new(0)

a.each do |b|
  if long.length < b.length
    long = b
  end
end

a.each do |v|
  count[v] += 1
end
test = count.max { |a, b| a[1] <=> b[1] }

puts "#{test[0]} #{long}"