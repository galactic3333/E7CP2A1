a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

b = a.group_by { |ele| ele.even? }

print b

# Forma correcta segun Rubocop:

c = a.group_by(&:even?)

print c
