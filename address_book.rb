require "./person_info.rb"


class AddressBook
	attr_accessor :contacts

	def initialize
		@contacts = Array.new
	end

	def add(person)
		@contacts << person
	end

	def list
		puts 'Address Book'
		12.times {print "-"}
		puts
		@contacts.each_with_index { |person, i| puts "Entry: #{i+1}: #{person.fullname}" }
	end

end

joe = Person.new('joe', 'bloggs', '1 Jan 1990')
adam = Person.new('adam', 'blank', '2 Jan 1970')
book = AddressBook.new
book.add(joe)
book.add(adam)

book.list