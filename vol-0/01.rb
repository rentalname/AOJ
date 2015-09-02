puts ARGF.each.map(&:to_i).sort.reverse[0, 3]
