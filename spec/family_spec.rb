describe FamilyMember do

it 'should initialize' do
		adam = FamilyMember.new('adam', 'blank', '2 Jan 1970')
		expect(adam.class).to eq FamilyMember 
		expect(adam.dob).to eq '2 Jan 1970'
		expect(adam.first_name).to eq 'Adam'
		expect(adam.last_name).to eq 'Blank'
		expect(adam.fullname).to eq 'Adam Blank'
		expect(adam.emails).to eq []
		expect(adam.phone_numbers).to eq []
	end

	it 'should be able to add a relationship' do
		adam = FamilyMember.new('adam', 'blank')
		adam.relationship = "father"
		expect(adam.relationship).to eq "father"
	end


end