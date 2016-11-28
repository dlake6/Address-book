require "./person_info.rb"
require 'YAML'

class AddressBook
	attr_accessor :contacts

	def initialize
		@contacts = Array.new
	end

	def add(person)
		@contacts << person
	end 

	def list
		puts "\nAddress Book"
		puts "------------"
		@contacts.each_with_index { |person, i| puts "Entry #{i+1}: #{person.fullname}" }
	end

	def load_yaml(file)
		details = YAML.load(File.open(file))
		details["people"].each do |yaml_person|
			person = Person.new(yaml_person["fname"], yaml_person["surname"], yaml_person["dob"])

			yaml_person['emails'].each do |e|
				add_email = e
			end

			yaml_person['phones'].each do |ph|
				add_phone = ph
			end

			add(person)
		end
	end

end





