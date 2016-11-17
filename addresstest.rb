require "./person_info.rb"


class AddressBook
	attr_accessor :contacts

	def initialize
		@contacts = Array.new
	end

	def add(person)
		@contacts << person.fullname
	end

	def list
		puts 'Address Book'
		12.times {print "-"}
		puts
		@contacts.each_with_index { |name,index| puts "Entry: #{index+1}: #{name}" }
	end
end

joe = Person.new('joe', 'bloggs', '1 Jan 1990')
adam = Person.new('adam', 'blank', '2 Jan 1970')
book = AddressBook.new
book.add(joe)
book.add(adam)

book.list