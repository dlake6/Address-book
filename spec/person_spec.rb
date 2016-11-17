describe Person do

	it 'should initialize' do
		joe = Person.new('joe', 'bloggs', '1 Jan 1990')
		expect(joe.class).to eq Person 
		expect(joe.dob).to eq '1 Jan 1990'
		expect(joe.first_name).to eq 'Joe'
		expect(joe.last_name).to eq 'Bloggs'
		expect(joe.fullname).to eq 'Joe Bloggs'
		expect(joe.emails).to eq []
		expect(joe.phone_numbers).to eq []
	end

	it 'should initialize' do
		joe = Person.new('joe', 'bloggs')
		expect(joe.class).to eq Person 
		expect(joe.dob).to eq nil
		expect(joe.first_name).to eq 'Joe'
		expect(joe.last_name).to eq 'Bloggs'
		expect(joe.fullname).to eq 'Joe Bloggs'
		expect(joe.emails).to eq []
		expect(joe.phone_numbers).to eq []
	end

	it 'should be able to add/remove emails addresses' do
		joe = Person.new('joe', 'bloggs')
		joe.add_email = 'joe@foo.com'
		joe.add_email = 'joe.bloggs@work.com'
		expect(joe.emails).to eq ['joe@foo.com', 'joe.bloggs@work.com']
		joe.remove_email = 0
		expect(joe.emails).to eq ["joe.bloggs@work.com"]
	end

	it 'should be able to add phone numbers' do
		joe = Person.new('joe', 'bloggs')
		joe.add_phone = '07712345678'
		joe.add_phone = '02012345678'
		expect(joe.phone_numbers).to eq ['07712345678', '02012345678'] 
	end


	it 'should be able to describe the person' do
		joe = Person.new('joe', 'bloggs', "1990-01-01")
		joe.add_email = 'joe@foo.com'
		joe.add_email = 'joe.bloggs@work.com'
		joe.add_phone = '07712345678'
		joe.add_phone = '02012345678'
		expect(joe.to_s).to eq "Joe Bloggs was born on 1990-01-01.\n Their email addresses are: [\"joe@foo.com\", \"joe.bloggs@work.com\"].\n Their phone numbers are [\"07712345678\", \"02012345678\"]"
	end

end