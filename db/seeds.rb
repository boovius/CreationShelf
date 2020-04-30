# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.first_or_create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

u = User.first_or_create(name: "Joshua Book")

c1 = Creation.first_or_create(
  name: 'Thyme-Toasted-Walnut Date Sourdourg',
  summary: 'A take off on the Tartine Country White with more whole wheat, 30% instead of 10%. 77% hydration. With burnt, toasted walnuts in olive-oil and thyme and a dash of black pepper, then thrown on top of a lamenation with chopped up dates.',
  creator: u
)
c1.create_header_photo(url: 'https://creation-shelf.s3.amazonaws.com/5C4032B6-1868-448B-ABC9-94A3CBE61F42.jpeg')
Photo.first_or_create(url: 'https://creation-shelf.s3.amazonaws.com/7BDB4893-3511-48DD-8640-0BBD72B5EA0D.jpeg', holder: c1)

c2 = Creation.first_or_create(
  name: 'Rosemary Sundried-Tomato Parmesan Mushroom Focaccia',
  summary: 'From The Perfect Loaf, a simple and easy focaccia recipe. This one was retarded for 48 hours after bulk, proofed for roughly an hour at room temp, then covered in a heavy amount of EVOO and toppings.',
  creator: u
)
c2.create_header_photo(url: 'https://creation-shelf.s3.amazonaws.com/7BAF4AB6-D740-4279-A12E-6CC074DD6689.jpeg')
Photo.create(url: 'https://creation-shelf.s3.amazonaws.com/A418F8E4-C078-4300-A712-7DEF5FD73930.jpeg', holder: c2)
Photo.create(url: 'https://creation-shelf.s3.amazonaws.com/A9374EEC-9261-4B02-A7FF-335F5999CEDA.jpeg', holder: c2)

