class Phone
  @@phones = []

  define_method(:initialize) do |home_phone, cell_phone|
    @home_phone = home_phone
    @cell_phone = cell_phone
  end

  define_method(:save) do
    @@phones.push(@home_phone)
    @@phones.push(@cell_phone)
  end

  define_singleton_method(:all) do
    @@phones
  end

end
