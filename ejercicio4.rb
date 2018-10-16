personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

a = personas.zip(edades).to_h


def valores(h)
	b = []
	h.each do |k,v|
		b.push(v)
	end
	return b
end

puts valores(a)
