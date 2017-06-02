require_relative '../db/sql_runner'

class Film

attr_accessor :id, :title, :price

def initialize (options)
  @id = options['id'].to_i if options['id']
  @title = options['title']
  @price = options['price']
end

# C-R-U-D functions first

  def save() # CREATE from CRUD
    sql = "INSERT INTO films (title, price), VALUES ('#{@title}', #{price}), RETURNING * ;"
    SqlRunner.run(sql)
  end

  def self.all() # READ from CRUD
    sql = "SELECT * FROM films"
    results = SqlRunner.run(sql)
    return results.map { |film| Film.new(film)}
  end

  def 
    sql = 
  end




  end # END of CLASS