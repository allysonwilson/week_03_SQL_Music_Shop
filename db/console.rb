require("pry-byebug")
require_relative("../models/album")
require_relative("../models/artist")


artist = Artist.new( { 'name' => "kajdfh" } )

binding.pry
nil

#call functions to test output in pry
