require_relative '../db/sql_runner'

class Film

attr_accessor :id, :title, :price

def initialize (options)
  @id = options['id'].to_i if options['id']
  @title = options['title']
  @price = options['price']
end

# C-R-U-D functions first

  def save()
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i() # not sure what this is doing but the hospital lab had it in & an error concerning this method has stopped when running console.rb
  end

  def self.all()
    sql = "SELECT * FROM films;"
    results = SqlRunner.run(sql)
    return results.map { |film| Film.new(film)}
  end

  def show_film_by_title() 
    sql = "SELECT FROM films WHERE title = '#{@title}';"
    results = SqlRunner.run(sql)
    return results.map { |film| Film.new(film)}
  end

  def show_film_by_id()
    sql = "SELECT FROM films WHERE id = #{@id};"
    results = SqlRunner.run(sql)
    return results.map { |film| Film.new(film)}
  end

  def show_films_by_price()
    sql = "SELECT FROM films WHERE price = #{price};"
    results = SqlRunner.run(sql)
    return results.map { |films| Film.new(film)}
  end

  def delete_film_by_name()
    sql = "DELETE FROM films WHERE title = '#{@title}';"
    SqlRunner.run(sql)
  end

  def delete_film_by_id()
    sql = "DELETE FROM films WHERE id = #{id};"
    SqlRunner.run(sql)
  end

  def self.delete_all_films()
    sql = "DELETE FROM films;"
    SqlRunner.run(sql)
  end

  def update_film_by_id()
    sql = "UPDATE films SET (title, price) = ('#{@title}', #{@price}) WHERE id = #{@id};"
    results = SqlRunner.run(sql)
    return results.map { |film| Film.new(film)}
  end

  def show_film_bookings()
    sql = "SELECT films.title, customers.name FROM films INNER JOIN tickets ON tickets.customer_id = films.id  INNER JOIN customers ON customers.id = tickets.film_id;"
    # not quite the 'see which cusotmers are coming to see one film', needs reworked as this gives a ful list of all films with who is going to see them. Still believe it should be a triple inner join since the tickets is the link to who is booked for what film.

  end

end # END of CLASS