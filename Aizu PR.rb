iterate = ARGF.gets.chomp.to_i
iterate.times do
  str = ARGF.gets
  str.gsub! /Hoshino/, 'Hoshina'
  puts str
end
