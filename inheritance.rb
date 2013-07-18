class Item
	attr_accessor :name
	def initialize name
		@id,@name = 1, name
	end
end

item = Item.new "myItem"
p item.name

class SpecialItem < Item
	def initialize name, special_attributes = []
		super name
		@special_attributes = special_attributes
	end
end

specialItem = SpecialItem.new "special myItem",[]
# specialItem = SpecialItem.new "special myItem"
p specialItem.name