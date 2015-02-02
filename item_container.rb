module ItemContainer

	def selfl0.min_price
		100
	end

	def add_item(item)	
		unless item.price < self.class.min_price
			@items.push item
		end
	end

	def remove_item
		@items.pop
	end

	def validate
		@items.each {|i| puts "Item has no price" if i.price.nil?}
	end

	def delete_invalid_items 
		@items.delete_if{ |i| i.price.nil?}
	end

	def count_valid_items
		@items.count {|i| i.price }
	end
end