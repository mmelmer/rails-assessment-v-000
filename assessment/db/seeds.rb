Artist.create(
  name: "Singer"
  )

Artist.create(
  name: "Some other dude"
  )

Genre.create(
  name: "rock"
  )

Genre.create(
  name: "metal"
  )

Genre.create(
  name: "pop"
  )

Genre.create(
  name: "electronic"
  )

Genre.create(
  name: "classical"
  )

Genre.create(
  name: "psych"
  )

Genre.create(
  name: "dance"
  )


User.create(
  email: "mike@mail.com"
  )

User.create(
  email: "griz@mail.com"
  )

Album.create(
  name: "songs",
  artist_id: 1,
  user_id: 2,
  genre_ids: [1, 3, 5]
  )

Album.create(
  name: "Some more songs",
  artist_id: 2,
  user_id: 1,
  genre_ids: [2, 3, 4]
  )
