=begin
class	Polygon
	@@sides = 10
	def self.sides
		@@sides
	end
end

puts Polygon.sides

class Triangle < Polygon
	@@sides = 3
end

puts Triangle.sides
puts Polygon.sides

class Rectangle < Polygon
	@@sides = 4
end

puts Polygon.sides
=end
class Item
	attr_reader :Item_name, :quantity
	attr_writer :item_name, :quantity
	def initialize quantity,name
		@quantity=quantity
		@item_name=name
	end
	#attr_reader :quantity
	#def initialize(Item_name,quantitys)
		#@Item_name = Item_name
		#@quantity = quantitys
	#end
	#def item_name
	#	@Item_name
	#end
end

#item = Item.new("tv",1)
item = Item.new(1,"aldo")
puts item:item_name #= "radio"
#puts item.quantity