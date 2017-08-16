require('pg')
require_relative('../db/sql_runner')
class Artist

    attr_accessor(:name)

  def initialize()
    @id =
    @name = name
    # @album = album

  end

  def save
    sql = ' INSERT INTO artists (name)
    VALUES ( $1) RETURNING *;'
    values = [@name]

    @id = returned_data[0]['id'].to_i()
    SqlRunner.run(sql, [@id])

  end

end
