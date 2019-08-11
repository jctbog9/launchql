User.create!(first_name: "Spongebob", last_name: "Squarepants", email: "spongebob@gmail.com", password: "krustykrab")
User.create!(first_name: "Squidward", last_name: "Tentacles", email: "squidward@comcast.net", password: "clarinet1")
User.create!(first_name: "Rick", last_name: "Star", email: "patrick_star@gmail.com.com", password: "3amkrabbypatty")
User.create!(first_name: "Sheldon", last_name: "Plankton", email: "plankton@evil.com", password: "madgenius")
User.create!(first_name: "Sandy", last_name: "Cheeks", email: "sandycheeks@gmail.com", password: "dougdimmadome")

Pet.create!(name: "Gary", species: "Snail", age: 20, adopted_at: 30.days.ago, user_id: 1)
Pet.create!(name: "Rock", species: "Rock", age: 5, adopted_at: 20.days.ago, user_id: 3)
Pet.create!(name: "Wormy", species: "Rock", age: 1, adopted_at: Date.new, user_id: 5)