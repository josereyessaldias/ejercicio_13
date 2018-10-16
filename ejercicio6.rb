restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

restaurant_menu.each do |k,v|
	if v == restaurant_menu.values.max
		puts k
	end
end

restaurant_menu.each do |k,v|
	if v == restaurant_menu.values.min
		puts k
	end
end

puts restaurant_menu.values.sum/restaurant_menu.length

puts b = restaurant_menu.keys

puts c = restaurant_menu.values


d = restaurant_menu.transform_values do |v|
	v * 1.19
end



restaurant_menu.each do |k,v|
	if k.split.count > 1
		restaurant_menu[k] = v * 0.8
	end
end


puts restaurant_menu
