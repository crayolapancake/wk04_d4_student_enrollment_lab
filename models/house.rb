require_relative('../db/sql_runner')

attr_accessor :name
attr_reader :id

class House

  def initialize (options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
  end


end
