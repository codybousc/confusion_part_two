class Contact
  @@contact = []
  attr_reader :first_name, :last_name, :birth_month

  define_method(:initialize) do |first_name, last_name, birth_month|
      @first_name = first_name
      @last_name = last_name
      @birth_month = birth_month
      @contact_id = @@contact.length() + (1)
    end

    define_method(:save) do
      @@contact.push(@first_name)
      @@contact.push(@last_name)
      @@contact.push(@birth_month)
    end

    define_singleton_method(:all) do
      @@contact
    end

    define_singleton_method(:clear) do
      @@contact = []
    end


    define_method(:contact_id) do
      @contact_id
    end



  end
