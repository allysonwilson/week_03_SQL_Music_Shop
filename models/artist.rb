require('pg')
require_relative('../db/sql_runner')
class Artist

    attr_accessor(:name)

  def initialize(artist_details)
    @id = artist_details["id"].to_i() if artist_details["id"]
    @name = artist_details["name"]


  end

  def save
    sql = ' INSERT INTO artists (name)
      VALUES ( $1 ) RETURNING *;'

    values = [@name]

    returned_data = SqlRunner.run(sql, values)

    @id = returned_data[0]['id'].to_i()
    #this part always the same for save functions?
  end

  def Artist.all
    sql = 'SELECT * FROM artists;'
    return SqlRunner.run( sql ).map { |artist| Artist.new( artist ) }
  end                #whats happening here? creating instance of artist?


end
