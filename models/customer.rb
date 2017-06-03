require_relative '../db/sql_runner'

class Customer

attr_accessor :id, :name, :cash

def initialize (options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @funds = options['cash']
end

# C-R-U-D functions first

  def save()
    sql = "INSERT INTO customers (name, cash), VALUES ('#{@name}', #{cash}), RETURNING * ;"
    SqlRunner.run(sql)
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

end # END of CLASS