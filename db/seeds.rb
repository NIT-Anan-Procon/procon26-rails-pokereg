# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.first

if user
  Thing.create({
    name: "Sample01",
    price: 100,
    amount: 5,
    category: "Food",
    owner: user,
    bought_at: Time.now
  })
  Thing.create({
    name: "Sample02",
    price: 500,
    amount: 2,
    category: "Food",
    owner: user,
    bought_at: Time.now
  })


end


