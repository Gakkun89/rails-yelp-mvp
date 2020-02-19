# 10.times do
#   Restaurant.create!(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.street_address,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     category: Restaurant::CATEGORIES.sample
#     )
# end

100.times do
  Review.create!(
    content: Faker::Restaurant.review,
    rating: rand(5),
    restaurant: Restaurant.find(rand(1..10))
  )
end
