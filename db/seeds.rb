# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#カテゴリ
Category.create do |a|
  a.id = 1
  a.category_name = 'バスケットボール'
  a.display = true
end

Category.create do |a|
  a.id = 2
  a.category_name = 'テニス'
  a.display = true
end
Category.create do |a|
  a.id = 3
  a.category_name = '卓球'
  a.display = true
end
Category.create do |a|
  a.id = 4
  a.category_name = '水泳'
  a.display = true
end
Category.create do |a|
  a.id = 5
  a.category_name = 'バレーボール'
  a.display = true
end
Category.create do |a|
  a.id = 6
  a.category_name = 'バドミントン'
  a.display = true
end

#会員
Customer.create do |a|
  a.id = 1
  a.last_name = '山田'
  a.first_name = '太郎'
  a.kana_last_name = 'ヤマダ'
  a.kana_first_name = 'タロウ'
  a.telephone = '08088888888'
  a.email = 'a@a'
  a.member_status = true
  a.password = 'aaaaaa'
end
