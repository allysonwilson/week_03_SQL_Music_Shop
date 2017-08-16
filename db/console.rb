require("pry-byebug")
require_relative("../models/album")
require_relative("../models/artist")


artist1 = Artist.new( { 'name' => 'Nina Simone' } )
artist1.save()
binding.pry
nil

album1 = Album.new( { 'title' => 'I Put a Spell on You',
  'genre' => 'jazz', 'id' => '1' } )
album1.save()



#call functions to test output in pry
