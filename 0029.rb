array = gets.chomp.split

register = Hash.new
# array.each do |value|
for value in array
  if register.keys.include?(value)
    register[value] = register[value] + 1
  else
    register[value] = 1
  end
end

freq_word = ''

for key in register
  if key[1] == register.values.max
    freq_word = key[0]
    break
  end
end



long_word = ''
array.each do |s|
  if long_word.length < s.length
    long_word = s
  end
end

puts freq_word + ' ' + long_word
