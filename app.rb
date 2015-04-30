require('sinatra')
require('sinatra/reloader')
require('./lib/contact')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end


get('/add_contact') do
erb(:add_contact)
end

post('/all_contacts') do
  name = params.fetch('name')
  @contact = Contact.new(name)
  @contact.save()
  erb(:all_contacts)
end

get('/all_contacts') do
  erb(:all_contacts)
end
