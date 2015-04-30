require('rspec')
require('contact')

describe('#save') do
  it('stores a phone number') do
    test_phone = Phone.new(555-555-5555, 444-444-4444)
    expect(test_phone.save).to(eq([555-555-5555, 444-444-4444]))
  end
end
