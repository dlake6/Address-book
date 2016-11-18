

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
		expect(book.contacts).to eq [joe, adam]
	end

	it 'should be able to add contacts from yaml file' do
		book = AddressBook.new
    book.load_yaml("./spec/test_data.yml")
    expect(book.contacts[0].first_name).to eq 'Joe'
    expect(book.contacts[0].last_name).to eq 'Bloggs'
  end



end