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
    sql = "INSERT INTO films (title, price), VALUES ('#{@title}', #{price}), RETURNING * ;"
    SqlRunner.run(sql)
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

end # END of CLASS