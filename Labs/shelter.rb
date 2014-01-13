class Shelter
	attr_accessor :clients, :animals

	def initalize(clients, animals)
		@clients = clients
		@animals = animals
	end

	def get_animal_list 
		result = animals.inject("") do |animal_list_str, animal|
			animal_list_str << "#{animal.name} age:#{animal.age} gender:#{animal.gender} species:#{animal.species}"
		end
		result || ""
	end

	def get_client_list
		result = clients.inject("") do |client_list_str, client|
			client_list_str << "#{client.name} age:#{client.age} number of children: #{client.num_children} number of pets: #{client.num_pets}"
		end
		result || ""
	end
	



	# def get_contact_list
 #    result = @units.inject("") do |contact_list_str, unit|
 #      if not unit.vacant?
 #         contact_list_str << "#{unit.tenant.name} p#:#{unit.tenant.phone}" #what is being called here
 #      end
 #    end
 #    result || ""
 #    binding.pry
 #  end

  # def calc_total_sqft_rented
  #   get_rented_units().inject(0) { |total_sqft, unit|
  #       total_sqft + unit.sqft.to_i
  #   }
  # end

  # def calc_annual_income
  #   get_rented_units().inject(0) { |total_income, unit|
  #       total_income + unit.rent.to_i
  #   }
  # end

  def get_available_clients
    @clients.select do |client|
        #client.adopted?
    end
  end

  def get_available_animals
    return @animal.select do |animal|
      not animal.adopted?
    end
  end

end
