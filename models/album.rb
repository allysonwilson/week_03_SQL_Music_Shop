require('pg')
# require_relative('../')

class Album


  def initialize(album_details)
    @id= album_details["id"].to_i() if album_details["id"]
    @title = album_details["title"]
    @genre = album_details["genre"]
    @artist_id = album_details["artist_id"]
    #year
  end

  def save
    sql = ' INSERT INTO albums (title, genre, artist_id)
      VALUES ( $1, $2, $3) RETURNING *;'

    values = [@title, @genre, @artist_id]

    returned_data = SqlRunner.run(sql, values)

    @id = returned_data[0]['id'].to_i()
    # is this universal part of save function
  end

  def Album.all
    sql = 'SELECT * FROM albums;'
    return SqlRunner.run( sql ).map { |album| Album.new( album )}
    # running sql code in file then returning it in new array whats happening in block?
  end

end
