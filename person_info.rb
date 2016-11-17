class Person
	attr_accessor :first_name, :last_name, :dob, :fullname 
	attr_reader :emails, :phone_numbers

	def initialize(first, last, dob = nil)
		@first_name = first.capitalize
		@last_name = last.capitalize
		@dob = dob
		@fullname = "#{first_name} #{last_name}"
		@emails = Array.new
		@phone_numbers = Array.new
	end

	def add_email=(email)
		@emails << email
	end

	def remove_email= (n)
		@emails.delete_at(n)
	end

	def add_phone= (number)
		@phone_numbers << number
	end

	def to_s
		"#{fullname} was born on #{dob}.\n Their email addresses are: #{emails}.\n Their phone numbers are #{phone_numbers}"
	end

	def print_details
		puts @fullname
		a = @fullname.length
		a.times {|n| print "-"}
		puts "\nDate of Birth: #{dob}"
		puts "\nEmail Addresses are:"
		@emails.each {|i| puts "- #{i}" }
		puts "\nPhone Numbers are:"
		@phone_numbers.each {|d| puts "- #{d}"}
	end

end
