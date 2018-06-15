nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

b = nombres.map { |x| x.length }

print b

# Forma correcta segun Rubocop:

c = nombres.map(&:length)

print c
