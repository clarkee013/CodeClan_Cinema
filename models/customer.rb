require_relative '../db/sql_runner'

class Customer

attr_accessor :id, :name, :cash

def initialize (options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @cash = options['cash']
end

# C-R-U-D functions first

  def save()
    sql = "INSERT INTO customers (name, cash) VALUES ('#{@name}', '#{@cash}') RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i() # not sure what this is doing but the hospital lab had it in & an error concerning this method has stopped when running console.rb
  end

  def self.all()
    sql = "SELECT * FROM customers;"
    results = SqlRunner.run(sql)
    return results.map { |customer| Customer.new(customer)}
  end

  def show_customer_by_name() 
    sql = "SELECT FROM customers WHERE name = '#{@name}';"
    results = SqlRunner.run(sql)
    return results.map { |customer| Customer.new(customer)}
  end

  def show_customer_by_id()
    sql = "SELECT FROM customers WHERE id = #{@id};"
    results = SqlRunner.run(sql)
    return results.map { |customer| Customer.new(customer)}
  end

  def show_customer_by_funds()
    sql = "SELECT FROM customers WHERE cash = #{@cash};"
    results = SqlRunner.run(sql)
    return results.map { |customer| Customer.new(customer)}
  end

  def delete_customer_by_name()
    sql = "DELETE FROM customers WHERE name = '#{@name}';"
    SqlRunner.run(sql)
  end

  def delete_customer_by_id()
    sql = "DELETE FROM customers WHERE name = '#{@name}';"
    SqlRunner.run(sql)
  end

  def self.delete_all_customers()
    sql = "DELETE FROM customers;"
    SqlRunner.run(sql)
  end

  def update_customer_by_id()
    sql = "UPDATE customers SET (name, cash) = ('#{@name}', #{@cash}) WHERE id = #{@id};"
    results = SqlRunner.run(sql)
    return results.map { |customer| Customer.new(customer)}
  end

  def show_booked_films_by_customer
    sql = "SELECT customers.name, films.title FROM customers INNER JOIN tickets ON tickets.customer_id = customer_id INNER JOIN films ON films.id = tickets.film_id;"
    reslts = SqlRunner.run(sql)
    return results.map { |customer| Customer.new(customer)}
  end


end # END of CLASS