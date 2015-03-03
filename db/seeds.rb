# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@thing = Thing.new
@thing.name = 'サンプル０１'
@thing.price = '100'
@thing.amount = 5
@thing.category = '食品'
@thing.save

@thing = Thing.new
@thing.name = 'サンプル０２'
@thing.price = '1000'
@thing.amount = 12
@thing.category = '衣料品'
@thing.save

@thing = Thing.new
@thing.name = 'サンプル０３'
@thing.price = '10000'
@thing.amount = 1
@thing.category = 'その他'
@thing.save

