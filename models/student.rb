require_relative('../db/sql_runner')

class Student

  attr_accessor :first_name, :second_name, :house, :age
  attr_reader :id


  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @first_name = options["first_name"]
    @second_name = options["second_name"]
    @house = options["house"]
    @age = options["age"].to_i
  end

  def save()
    sql = "INSERT INTO students
    (
      first_name, second_name, house, age
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING *"
    values = [@first_name, @second_name, @house, @age]
    student = SqlRunner.run( sql, values ).first
    @id = student['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students"
    values = []
    students = SqlRunner.run(sql, values)

    result = students.map { |student| Student.new( student ) }

    return result
  end

  def self.find( id )
    sql = "SELECT * FROM students
    WHERE id = $1"
    values = [id]
    student = SqlRunner.run( sql, values )
    result = Student.new( student.first )
    return result
  end


  def self.delete_all()
    sql = "DELETE FROM students"
    values = []
    SqlRunner.run(sql, values)
  end

  # def locations      #gives all locations for a user
  #   sql = "SELECT locations.*
  #     FROM locations
  #     INNER JOIN visits
  #     ON visits.location_id = locations.id
  #     WHERE user_id = $1"
  #   values = [@id]
  #   locations = SqlRunner.run( sql, values )    #pg result; map it
  #   result = locations.map{ |location| Location.new(location) } #returns Location.new
  #   return result
  # end
  #
  # def self.map_items(array)
  #   return = users_array.map { |user| User.new(user)}
  # end
  #



end
