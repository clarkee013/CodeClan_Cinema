require_relative '../models/customer'
require_relative '../models/film'
require_relative '../models/ticket'


customer1 = Customer.new({'name' => 'David','cash' => 10})
customer2 = Customer.new({'name' => 'Fee','cash' => 20})
customer3 = Customer.new({'name' => 'Tigger','cash' => 30})
customer4 = Customer.new({'name' => 'Topsy','cash' => 50})
customer5 = Customer.new({'name' => 'Ralf', 'cash' => 15})

# might need the customers.save here once everything is up and running or at least running better!!

film1 = Film.new({'title' => 'Guardians of the Galaxy 2','price' => 5})
film2 = Film.new({'title' => 'Doctor Strange 3D','price' => 10})
film3 = Film.new({'title' => 'Back To The Future Trilogy', 'price' => 15})
film4 = Film.new({'title' => 'Yellow Submarine', 'price' => 5})
flim5 = Film.new({'title' => 'M*A*S*H', 'price' => 5})

# might need the films.save here once blah blah see note above

ticket1 = Ticket.new({film_id => flim1.id,customer_id => customer1.id})
ticket2 = Ticket.new({film_id => flim3.id,customer_id => customer2.id})
ticket3 = Ticket.new({film_id => flim4.id,customer_id => customer3.id})
ticket4 = Ticket.new({film_id => flim2.id,customer_id => customer4.id})
ticket5 = Ticket.new({film_id => flim5.id,customer_id => customer5.id})
ticket6 = Ticket.new({film_id => flim1.id,customer_id => customer1.id})
ticket7 = Ticket.new({film_id => flim5.id,customer_id => customer2.id})
ticket8 = Ticket.new({film_id => flim2.id,customer_id => customer3.id})
ticket9 = Ticket.new({film_id => flim4.id,customer_id => customer4.id})
ticket10 = Ticket.new({film_id => flim5.id,customer_id => customer5.id})
ticket11 = Ticket.new({film_id => flim3.id,customer_id => customer1.id})
ticket12 = Ticket.new({film_id => flim2.id,customer_id => customer2.id})
ticket13 = Ticket.new({film_id => flim4.id,customer_id => customer3.id})
ticket14 = Ticket.new({film_id => flim1.id,customer_id => customer4.id})
ticket15 = Ticket.new({film_id => flim2.id,customer_id => customer5.id})
ticket16 = Ticket.new({film_id => flim4.id,customer_id => customer1.id})
ticket17 = Ticket.new({film_id => flim5.id,customer_id => customer2.id})
ticket18 = Ticket.new({film_id => flim3.id,customer_id => customer3.id})
ticket19 = Ticket.new({film_id => flim2.id,customer_id => customer4.id})
ticket20 = Ticket.new({film_id => flim2.id,customer_id => customer5.id})
