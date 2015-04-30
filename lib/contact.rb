class Contact
  @@contact = []
  attr_reader :name

  define_method(:initialize) do |name|
      @name = name
      @contact_id = @@contact.length() + (1)
      @phone_entry = []
    end

    define_method(:save) do
      @@contact.push(@name)
    end

    define_method(:name) do
      @name
    end

    define_method(:phone_entry) do
      @phone_entry
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

    define_method(:add_phone_num) do |phone|
      @phone_entry.push(phone)
    end


  end
