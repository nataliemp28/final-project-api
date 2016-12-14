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
  bio: "Hi I'm Mike. I'm an instructor in Web development at General Assembly.",
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
  bio: "Hi I'm Emily. I'm a TA at General Assembly.",
  dress_size: "4",
  shoe_size: "6"
)
natalie = User.create!(
  username: "nataliemp28",
  email: "natalie@ga.co",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/natalie.jpg")),
  bio: "Hi I'm Natalie. I live in East London and I love clothes, shoes and handbags and would love to exchange some of the many things I've worn once or twice for some new things to freshen up my stale old wardrobe!",
  dress_size: "8",
  shoe_size: "4"
)
natalieW = User.create!(
  username: "nataliewigg",
  email: "natw@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/natw.jpg")),
  bio: "5 foot 9 inches. Clothing size 10. Shoe size 7. Living in North London. Mostly high street clothes and shoes. Have a lot of summer clothes to swap and need more winter items.",
  dress_size: "10",
  shoe_size: "7"
)
kim = User.create!(
  username: "kimw",
  email: "kimw@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/kimw.jpg")),
  bio: "Clothing size uk10 & Shoe size 8-9. Nearly 5 foot 10. I live in the Hammersmith area and looking to exchange any designer clothing items, shoes or handbags.",
  dress_size: "10",
  shoe_size: "8.5"
)
dominique = User.create!(
  username: "domk",
  email: "domk@gmail.com",
  password: "password",
  password_confirmation: "password",
  bio: "Hi, I'm Dom, I'm about 5 foot 4 inches. I have loads of pairs of shoes and clothes that I've never worn, or worn once, particularly clothing size 14 so would love to exchange these for other near new items as my clothing size is now 10-12",
  dress_size: "10-12",
  shoe_size: "5",
  image: File.open(File.join(Rails.root, "db/images/dom.jpg"))
)
priya = User.create!(
  username: "priyan",
  email: "priyan@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/priya.jpg")),
  bio: "I'm Priya, I live in East London and would really love to exchange some of my clothes for anything designer brand. I particularly love Prada. I'm 5 foot 6 inches tall and about a size 12 in clothing. I also really love handbags and very high heels, but I do have very big feet!",
  dress_size: "12",
  shoe_size: "8"
)
bex = User.create!(
  username: "bexxyd",
  email: "bexd@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/bex.jpg")),
  bio: "I'm a very tall lady with a casual style in clothing and shoes. I favour jeans and trainers and like all brands. I'm 5'11 and often buy clothes from long tall sally and the like. I live in South East London and am open to all kinds of swaps.",
  dress_size: "10",
  shoe_size: "9"
)
mishel = User.create!(
  username: "mishelc",
  email: "mishelc@gmail.com",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/mishelc.jpg")),
  bio: "I'm Mishel. I live out in Essex and I'm 5'5 inches tall. I'm a clothing size 8-10 as I've had two children recently. I have a lot of very high quality designer clothes in a size 6 that I'd like to swap for other things. I love designer coats and handbags. Shoes wise I'm a size 5",
  dress_size: "8-10",
  shoe_size: "5"
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
canada_goose_coat = Item.create!(
user_id: priya.id,
image: File.open(File.join(Rails.root, "db/images/canadagoosecoat.jpg")),
description: "Brand new Canada Goose Coat. Purple",
condition: "Perfect. Never worn.",
size: "12"
)
karen_millen_dress = Item.create!(
user_id: dominique.id,
image: File.open(File.join(Rails.root, "db/images/karenmillendress.jpg")),
description: "Lovely Karen Millen Dress",
condition: "Worn several times but dry-cleaned",
size: "UK 10"
)
kurt_geiger_boots = Item.create!(
user_id: kim.id,
image: File.open(File.join(Rails.root, "db/images/kurtgeigerboots.jpg")),
description: "Very nice black suede Kurt Geiger boots with tan heel and sole",
condition: "Decent",
size: "Shoe size 8"
)
mulberry_bag = Item.create!(
user_id: mishel.id,
image: File.open(File.join(Rails.root, "db/images/mulberrybag.jpg")),
description: "Beautiful Mulberry bag",
condition: "Hardly Used",
size: "N/A"
)
oasis_jeggings = Item.create!(
user_id: bex.id,
image: File.open(File.join(Rails.root, "db/images/oasisjeggings.jpg")),
description: "Very comfy jeggings from Oasis",
condition: "Brand new",
size: "8"
)
oliver_bonas_skirt = Item.create!(
user_id: natalie.id,
image: File.open(File.join(Rails.root, "db/images/oliverbonasskirt.jpg")),
description: "Oliver Bonas skirt, ideal for party season",
condition: "Only worn a few times",
size: "10"
)
ted_baker_shoes = Item.create!(
user_id: dominique.id,
image: File.open(File.join(Rails.root, "db/images/tedbakershoes.jpg")),
description: "Lovely patterned Ted Baker high heels. Too high for me and not the comfiest if you are not used to heels!",
condition: "Worn once",
size: "UK shoe size 5"
)
topshop_top = Item.create!(
user_id: natalie.id,
image: File.open(File.join(Rails.root, "db/images/topshoptop.jpg")),
description: "Nice top from topshop",
condition: "Average",
size: "8"
)
swap_1 = Swap.create!(
offer_id: xmas_jumper.id,
request_id: grey_jumpsuit.id,
accepted: nil
)
swap_2 = Swap.create!(
offer_id: topshop_top.id,
request_id: mulberry_bag.id,
accepted: nil
)
swap_3 = Swap.create!(
offer_id: karen_millen_dress.id,
request_id: kurt_geiger_boots.id,
accepted: nil
)
swap_4 = Swap.create!(
offer_id: oasis_jeggings.id,
request_id: mulberry_bag.id,
accepted: nil
)
