# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1 = Artist.create(
  name: "Singer"
  )

artist2 = Artist.create(
  name: "Some other dude"
  )

album1 = Album.create(
  name: "songs",
  artist_id: 1,
  user_id:2
  )

album2 = Album.create(
  name: "Some more songs",
  artist_id: 2,
  user_id: 1
  )

user1 = User.create(
  email: "mike@mail.com"
  )

user2 = User.create(
  email: "griz@mail.com"
  )
