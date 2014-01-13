class Animal
	@@population = []
	attr_accessor :name, :age, :gender, :species, :toys
	
	def initialize(name, age, gender, species, toys = nil)
		@name = name
		@age = age
		@gender = gender
		@species = species
	end

	def adopted?
		@name.nil?
	end
	
end
