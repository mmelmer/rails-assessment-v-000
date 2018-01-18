10.times do
  Song.create(
    name: Faker::Commerce.product_name 
  )
end


10.times do
  Venue.create(
    name: Faker::Commerce.product_name 
  )
end

Show.create(
    venue: Venue.first,
    date: 12/27/2017
  )

SongShow.create(
    song_id: 1,
    show_id: 1
  )