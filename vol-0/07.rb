BASE_DEBT = 100_000

to_weeks = gets.to_i

current = BASE_DEBT
to_weeks.times do
  current *= 1.05
  current = current.to_r.ceil(-3)
end

puts current
