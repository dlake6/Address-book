describe AddressBook do

	it 'should initalize' do
		book = AddressBook.new
		expect(book.contacts).to eq []
		
	end

	it 'should be able to add a contacts to an address book' do
		joe = Person.new('joe', 'bloggs', '1 Jan 1990')
		adam = Person.new('adam', 'blank', '2 Jan 1970')
		book = AddressBook.new
		book.add(joe)
		book.add(adam)
		expect(book.contacts).to eq ['Joe Bloggs', 'Adam Blank']
	end
end