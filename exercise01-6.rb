a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

b = a.inject(0) { |sum, x| sum += x }

print b
