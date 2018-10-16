meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

a = meses.zip(ventas).to_h

a = a.invert


a.each do |k,v|
	if k == a.keys.max
		puts v
	end
end

