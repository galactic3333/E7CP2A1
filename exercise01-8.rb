a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

b = a.group_by { |ele| ele < 6 || ele > 6 }

print b
