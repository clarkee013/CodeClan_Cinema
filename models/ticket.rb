require_relative '../db/sql_runner'

class Ticket

attr_accessor :id, :film_id, :customer_id

def initialize (options)
  @id = options['id'].to_i if options['id']
  @film_id = options['film_id'].to_i
  @customer_id = options['customer_id'].to_i
end


  def save()
    sql = "INSERT INTO tickets (film_id, customer_id), VALUES (#{@film_id}, #{customer_id}), RETURNING * ;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM tickets;"
    results = SqlRunner.run(sql)
    return results.map { |ticket| Ticket.new(ticket)}
  end

  # def show_ticket_by_customer() # not sure this one will work, will the sql code pick up the name is from customer name?
  #   sql = "SELECT FROM tickets WHERE name = '#{@name}';"
  #   results = SqlRunner.run(sql)
  #   return results.map { |ticket| Ticket.new(ticket)}
  # end 

  def show_ticket_by_customer_id()
    sql = "SELECT FROM tickets WHERE customer_id = #{@customer_id};"
    results = SqlRunner.run(sql)
    return results.map { |ticket| Ticket.new(ticket)}
  end

  def show_tickets_by_film_id()
    sql = "SELECT FROM tickets WHERE film_id = #{@film_id};"
    results = SqlRunner.run(sql)
    return results.map { |ticket| Ticket.new(ticket)}
  end

  def delete_tickets_by_film_id()
    sql = "DELETE FROM tickets WHERE film_id = #{@film_id};"
    SqlRunner.run(sql)
  end

  def delete_tickets_by_customer_id()
    sql = "DELETE FROM tickets WHERE customer_id = #{@customer_id};"
    SqlRunner.run(sql)
  end

  def self.delete_all_tickets()
    sql = "DELETE FROM tickets;"
    SqlRunner.run(sql)
  end

  def update_ticket_by_id()
    sql = "UPDATE tickets SET (customer_id, film_id) = (#{@customer_id}, #{@film_id}) WHERE id = #{@id};"
    results = SqlRunner.run(sql)
    return results.map { |ticket| Ticket.new(ticket)}
  end

end # END of CLASS