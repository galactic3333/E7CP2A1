nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

b = nombres.select { |x| x.length > 5 }

print b
