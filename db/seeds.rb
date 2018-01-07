10.times do
  Song.create(
    name: Faker::Commerce.product_name,
  )
end