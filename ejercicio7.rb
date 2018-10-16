inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6, a:22}

opciones = ["Opción 1: agregar item",
			"Opción 2: eliminar item",
			"Opción 3: actualizar item",
			"Opción 4: ver stock total",
			"Opción 5: ver item con mayor stock",
			"Opción 6: ver si existe item",
			"Opción 7: salir\n\n",
			]


def agregar(datos)
	puts "Indique el nombre del item a agregar"
	item = gets.chomp.to_sym
	puts "Indique la cantidad del item #{item} a agregar"
	cant = gets.chomp.to_i
	datos[item] = cant
end

def eliminar(datos)
	puts datos
	puts "Indique el nombre del item a eliminar"
	elim = gets.chomp.to_sym
	datos.delete(elim)
end

def actualizar(datos)
	puts "Indique el nombre del item a actualizar"
	datos.each do |k,v|
		puts k
	end
	item = gets.chomp.to_sym
	datos.delete(item)
	puts "Indique el nuevo nombre"
	nuevo_nom = gets.chomp.to_sym
	puts "Indique la nueva cantidad del ítem"
	cantidad = gets.chomp.to_i
	datos[nuevo_nom] = cantidad
end

def stock(datos)
	puts datos
end

def mayor(datos)
	datos.each do |k,v|
		if v == datos.values.max
			puts "El item con mayor cantidad es #{k}."
		end
	end
end

def preguntar(datos)
	puts "Qué item quiere saber si está en el registro"
	item = gets.chomp.to_sym
	inv = 0
	datos.each do |k,v|
		if k == item
			puts "Sí"
			inv += 1
		end
	end
	puts "No" if inv == 0
end




eleccion = 0
while eleccion != 7 do
puts "\nIngrese una de las siguientes opciones\n\n"
puts opciones
eleccion = gets.chomp.to_i

while eleccion < 1 or eleccion > 7 do
puts "Escriba un número entre 1 y 7"
eleccion = gets.chomp.to_i

end


case eleccion
when 1
agregar(inventario)
	
when 2
eliminar(inventario)

when 3
actualizar(inventario)

when 4
stock(inventario)

when 5
mayor(inventario)

when 6
preguntar(inventario)

end
end

puts "programa terminado\n"