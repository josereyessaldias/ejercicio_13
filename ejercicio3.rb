h = {"x": 1, "y":2}

h[:x] = 5

h.delete(:y)

h.each do |k,v|
	if k == :z
		puts "yeeah"
	end
end

h = h.invert
