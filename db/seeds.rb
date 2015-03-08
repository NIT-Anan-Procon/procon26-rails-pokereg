# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.first
receipt = Receipt.new
receipt.owner = User.first
receipt.bought_at = Time.now
receipt.save

if receipt
  Thing.create({
    name: "Sample01",
    price: 100,
    amount: 5,
    category: "Food",
    receipt: receipt
  })
  Thing.create({
    name: "Sample02",
    price: 500,
    amount: 2,
    category: "Food",
    receipt: receipt
  })
end

