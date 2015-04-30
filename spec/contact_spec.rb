require('rspec')
require('address_book')

describe(Contact) do
before() do
  Contact.clear()
end

  describe('#first_name') do
    it('returns the name in contact list') do
      test_name = Contact.new('Tony', 'Gonzalez', 'May')
      expect(test_name.first_name()).to(eq('Tony'))
    end
  end

  describe('#save') do
    it('stores name and birth month in contact array') do
      test_name = Contact.new('Tony', 'Gonzalez', 'May')
      expect(test_name.save()).to(eq(['Tony', 'Gonzalez', 'May']))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties all contacts') do
      Contact.new('Tony', 'Gonzalez', 'May').save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#contact_id') do
    it('finds the contact by its id') do
      test_contact = Contact.new("John", 'Adams', "June")
      expect(test_contact.contact_id()).to(eq(1))
    end
  end



end
