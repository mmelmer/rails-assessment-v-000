10.times do
  Song.create(
    name: Faker::Commerce.product_name,
  )
end


10.times do
  Venue.create(
    name: Faker::Commerce.product_name,
  )
end