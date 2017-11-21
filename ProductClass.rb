class Product

	attr_accessor :item, :description, :cost :quantity

	def initialize(item, description, cost, quantity)
		@item = item
		@description = description
		@cost = cost
		@quantity = quantity
	end

	def increaseQ(num)
		quantity += num
	end

	def decreaseQ(num)
		quantity -= num
	end

	def availableQ
		quantity 
	end
end
