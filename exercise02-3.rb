nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

b = nombres.select { |x| x[0] == 'P' }

print b
