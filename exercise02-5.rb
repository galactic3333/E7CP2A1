nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

=begin

Ejemplos:
b = nombres.map { |x| x.gsub(/[ae]/,'X\1') }

print b

c = nombres.map { |x| x.gsub(/([ae])/,'X\1') }

print c

d = "foo bar bag".gsub(/(bar)/,'\1XXX')

print d

=end

e = nombres.map { |x| x.gsub(/[aeiouAEIOU]/, '') }

print e
