array = ["joan","sheena","gigi"]

i = ArrayIterator.new(array)

while i.has_next?

	puts "item : #{i.next_item}"
	
end