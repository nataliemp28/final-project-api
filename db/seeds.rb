# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "items", "swaps"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

mike = User.create!(
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/micky-ginger.jpg")),
  # image: "https://s3-eu-west-1.amazonaws.com/wdi-project-4/_MG_6224.jpg",
  bio: "blablabla",
  dress_size: "TBC",
  shoe_size: "9?"
)
# puts "#{mike.username} was created"
emily = User.create!(
  username: "emilyi",
  email: "emily.i@ga.co",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/emily-i.jpg")),
  bio: "blablabla",
  dress_size: "4",
  shoe_size: "6"
)
natalie = User.create!(
  username: "nataliemp28",
  email: "natalie@ga.co",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/natalie.jpg")),
  bio: "blablabla",
  dress_size: "8",
  shoe_size: "4"
)
reiss_dress = Item.create!(
  user_id: natalie.id,
  image: File.open(File.join(Rails.root, "db/images/reiss-dress.jpg")),
  description: "Reiss blue patterned summer dress",
  condition: "near new",
  size: "UK 10"
)
# puts "#{reiss_dress.description} was added to the pile"
grey_jumpsuit = Item.create!(
user_id: emily.id,
image: File.open(File.join(Rails.root, "db/images/grey-jumpsuit.jpg")),
description: "House of Fraser grey jumpsuit",
condition: "brand new",
size: "8"
)
xmas_jumper = Item.create!(
user_id: mike.id,
image: File.open(File.join(Rails.root, "db/images/xmas-jumper.jpg")),
description: "best xmas jumper in the world",
condition: "pretty well loved",
size: "medium"
)
swap_1 = Swap.create!(
offer_id: xmas_jumper.id,
request_id: grey_jumpsuit.id,
accepted: true
)
