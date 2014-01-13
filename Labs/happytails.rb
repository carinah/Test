require './animal' # name of animal class
require './client' # name of client class
require './shelter' # name of shelter class

#define the 'shelter' and create it
shelter = Shelter.new("Happy Tails", "Union Street")

def menu message
	puts `clear`
	puts "*** Happy Tails v1.0 ***\n\n"

	puts ""

	puts "#{message}\n\n" unless message.empty?

	puts '1 : Add client'
	puts '2 : Add pet'
	puts '3 : Show available pets'
	puts '4 : Adopt a pet'
	puts '5 : Show available clients'
	puts "q : Quit\n\n"
	print '--> '
	gets.chomp
	end


	message = ""
	choice = menu message
	while choice != 'q'
		message = ""
		case choice
		
		when "1"
			puts "Enter client info:"
			print "name"; name = gets.chomp
			print "age"; age = gets.chomp
			print "number of children"; num_children = gets.chomp
			print "species"; num_pets = gets.chomp
			shelter.get_animal_list.each do |client|
				puts "#{client.name} "
			end
			print "#:"; requested_client = gets.chomp
		 	selected_client = (client.name.select { |name| client.name == requested_client}).first
		 	selected_client.client = Client.new(name, age, num_pets, num_children)
		 	message = "Client #{selected_client.client.name} has been added."

		when "2"
			puts "Donate pet info"
			print "Your pet's name?"; name = gets.chomp
			print "Your pet's age?"; age = gets.chomp
			print "Your pet's gender"; gender = gets.chomp
			print "Your pet's species"; species = gets.chomp
			print "Your pet's toys"; toys = gets.chomp

			shelter.animals << Animal.new(name, age, gender, species, [])
			message = "Confirming we added your pet, #{name}, a #{}{gender} #{species} that is #{age} years old."


			##Display all pets.

			print "What do you want to adopt?"

			##run select message

		when "3"
			puts "Display all animals:\n"
			message += clients.get_client_list()
		# when "4"
		# 	puts "Adopt a pet:\n"
		# 	message += animals.get_animal_list()
		when "5"
			puts "Display all clients:\n"
			message += animals.get_animal_list()
		else
			message += "I don't understand ..."
		end
		choice = menu message
	end

			


