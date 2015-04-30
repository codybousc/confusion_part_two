require('rspec')
require('contact')
require('phone')

describe(Contact) do
before() do
  Contact.clear()
end

  describe('#name') do
    it('returns the name in contact list') do
      test_name = Contact.new('Tony Gonzalez')
      expect(test_name.name()).to(eq('Tony Gonzalez'))
    end
  end

  describe('#save') do
    it('stores name and birth month in contact array') do
      test_name = Contact.new('Tony Gonzalez')
      expect(test_name.save()).to(eq(['Tony Gonzalez']))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties all contacts') do
      Contact.new('Tony Gonzalez').save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#contact_id') do
    it('finds the contact by its id') do
      test_contact = Contact.new("John Adams")
      expect(test_contact.contact_id()).to(eq(1))
    end
  end

  describe('#add_phone_num') do
    it('adds a new phone num') do
      test_contact = Contact.new("Tony Boloni")
      test_phone = Phone.new(555-555-5555, 444-444-4444)
      test_contact.add_phone_num(test_phone)
      expect(test_contact.phone_entry()).to(eq([test_phone]))
    end
  end


end
