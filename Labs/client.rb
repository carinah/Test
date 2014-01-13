class Client
	att_accessor :name, :age, :num_pets, :num_children

	def initialize(name, age, num_pets = nil, num_children = nil)
		@name = name
		@age = age
		@num_pets = num_pets
		@num_children = num_children
	end

end

