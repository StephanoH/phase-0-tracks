class TodoList
	attr_accessor :list


	def initialize(things_to_do)
		@list = things_to_do
	end

	def get_items
		@list
	end

	def add_item(addition)
		@list << addition
	end

	def delete_item(deletion)
		@list.delete(deletion)
	end

	def get_item(x)
		@list[x]
	end

end

