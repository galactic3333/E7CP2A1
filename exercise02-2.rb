nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

b = nombres.map { |x| x.downcase }

print b

# Forma correcta segun Rubocop:

c = nombres.map(&:downcase)

print c
