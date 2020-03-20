# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#管理者
Admin.create do |a|
  a.id = 1
  a.email = 'a@a'
  a.password = 'aaaaaa'
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

#施設
Facility.create do |a|
  a.id = 1
  a.facility_name = '○○体育館'
  a.address = '東京○○区○○市○○町1-1-1'
  a.date = '毎週火曜日'
  a.lending_time = '18:00-22:00'
  a.facility_phone = '11111111'
  a.facility_image_id = ''
  a.use_status = true
  a.introduction = '用具はこちらで用意してあります'
end

Facility.create do |a|
  a.id = 2
  a.facility_name = '△△テニス場'
  a.address = '東京△△区△△市△△町1-1-1'
  a.date = '毎週水、木曜日'
  a.lending_time = '18:00-22:00'
  a.facility_phone = '11111111'
  a.facility_image_id = ''
  a.use_status = true
  a.introduction = '雨天時はご利用いただけません'
end

Facility.create do |a|
  a.id = 3
  a.facility_name = 'xx体育館'
  a.address = '東京xx区xx市xx町1-1-1'
  a.date = '毎週火曜日'
  a.lending_time = '18:00-22:00'
  a.facility_phone = '11111111'
  a.facility_image_id = ''
  a.use_status = true
  a.introduction = '気軽にご利用ください'
end

#コート
SubFacility.create do |a|
  a.id = 1
  a.category_id = 5
  a.facility_id = 1
  a.sub_name = 'Aコート'
  a.sub_image_id = ''
  a.sub_number = '①'
  a.body = '広々とご利用いただけます'
end

SubFacility.create do |a|
  a.id = 2
  a.category_id = 5
  a.facility_id = 1
  a.sub_name = 'Bコート'
  a.sub_image_id = ''
  a.sub_number = '②'
  a.body = '広々とご利用いただけます'
end
SubFacility.create do |a|
  a.id = 3
  a.category_id = 2
  a.facility_id = 2
  a.sub_name = 'Aコート'
  a.sub_image_id = ''
  a.sub_number = '①'
  a.body = '広々とご利用いただけます'
end
SubFacility.create do |a|
  a.id = 4
  a.category_id = 2
  a.facility_id = 2
  a.sub_name = 'Bコート'
  a.sub_image_id = ''
  a.sub_number = '②'
  a.body = '広々とご利用いただけます'
end
SubFacility.create do |a|
  a.id = 5
  a.category_id = 3
  a.facility_id = 3
  a.sub_name = 'Aコート'
  a.sub_image_id = ''
  a.sub_number = '①'
  a.body = '広々とご利用いただけます'
end
SubFacility.create do |a|
  a.id = 6
  a.category_id = 3
  a.facility_id = 3
  a.sub_name = 'Bコート'
  a.sub_image_id = ''
  a.sub_number = '②'
  a.body = '広々とご利用いただけます'
end