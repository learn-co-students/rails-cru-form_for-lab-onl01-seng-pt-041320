# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: "Lady Gaga", bio: "super colorful female singer")

Artist.create(name: "Beach Boys", bio: "Oldies")

Artist.create(name: "Strumbellas", bio: "Canadian Folk")

Genre.create(name: "Rock")
Genre.create(name: "Classical")
Genre.create(name: "Folk Rock")
Genre.create(name: "Rap")

Song.create(name: " Bright linghts", artist_id: 1, genre_id: 1)

Song.create(name: " Go'n Surfin", artist_id: 2, genre_id: 2)

Song.create(name: "Hands up", artist_id: 3, genre_id: 3)