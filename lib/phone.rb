require('address_book')

class Phone
  define_method(:initialize) do |home_phone, cell_phone|
    @home_phone = home_phone
    @cell_phone = cell_phone
  end
  
  end
