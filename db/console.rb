require_relative '../models/customers'
require_relative '../models/films'
require_relative '../models/tickets'


customer1 = Customers.new({
  'name' => 'David',
  'cash' => 20
})

# might need the customers.save here once everything is up and running or at least running better!!

film1 = Films.new({
  'title' => 'Guardians of the Galaxy 2',
  'price' => 5
  })

# might need the films.save here once blah blah see note above

