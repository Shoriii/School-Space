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
  a.email = 'a@a.co.jp'
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
  a.email = 'a@a.co.jp'
  a.member_status = true
  a.password = 'aaaaaa'
end

Customer.create do |a|
  a.id = 2
  a.last_name = '木村'
  a.first_name = '拓哉'
  a.kana_last_name = 'キムラ'
  a.kana_first_name = 'タクヤ'
  a.telephone = '08088888888'
  a.email = 'z@z.co.jp'
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

Facility.create do |a|
  a.id = 4
  a.facility_name = '○○グラウンド'
  a.address = '東京○○区○○市○○町1-1-1'
  a.date = '毎週日曜日'
  a.lending_time = '10:00-16:00'
  a.facility_phone = '11111111'
  a.facility_image_id = ''
  a.use_status = true
  a.introduction = 'ボールはご自身でご用意お願いいたします'
end

Facility.create do |a|
  a.id = 5
  a.facility_name = '△△プール'
  a.address = '東京△△区△△市△△町1-1-1'
  a.date = '毎週土曜日※7,8月限定'
  a.lending_time = '11:00-17:00'
  a.facility_phone = '11111111'
  a.facility_image_id = ''
  a.use_status = true
  a.introduction = '雨天時はご利用いただけません'
end

Facility.create do |a|
  a.id = 6
  a.facility_name = 'xx卓球場'
  a.address = '東京xx区xx市xx町1-1-1'
  a.date = '毎週火曜日'
  a.lending_time = '18:00-22:00'
  a.facility_phone = '11111111'
  a.facility_image_id = ''
  a.use_status = true
  a.introduction = '用具はこちらで用意してあります。係員にお声掛けください。'
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
  a.category_id = 6
  a.facility_id = 3
  a.sub_name = 'Aコート'
  a.sub_image_id = ''
  a.sub_number = '①'
  a.body = '広々とご利用いただけます'
end
SubFacility.create do |a|
  a.id = 6
  a.category_id = 6
  a.facility_id = 3
  a.sub_name = 'Bコート'
  a.sub_image_id = ''
  a.sub_number = '②'
  a.body = '広々とご利用いただけます'
end

SubFacility.create do |a|
  a.id = 7
  a.category_id = 3
  a.facility_id = 6
  a.sub_name = 'Aコート'
  a.sub_image_id = ''
  a.sub_number = '①'
  a.body = '広々とご利用いただけます'
end
SubFacility.create do |a|
  a.id = 8
  a.category_id = 3
  a.facility_id = 6
  a.sub_name = 'Bコート'
  a.sub_image_id = ''
  a.sub_number = '②'
  a.body = '広々とご利用いただけます'
end

SubFacility.create do |a|
  a.id = 9
  a.category_id = 1
  a.facility_id = 4
  a.sub_name = 'Aコート'
  a.sub_image_id = ''
  a.sub_number = '①'
  a.body = '広々とご利用いただけます'
end
SubFacility.create do |a|
  a.id = 10
  a.category_id = 1
  a.facility_id = 4
  a.sub_name = 'Bコート'
  a.sub_image_id = ''
  a.sub_number = '②'
  a.body = '広々とご利用いただけます'
end

SubFacility.create do |a|
  a.id = 11
  a.category_id = 4
  a.facility_id = 5
  a.sub_name = '第一コース'
  a.sub_image_id = ''
  a.sub_number = '①'
  a.body = '広々とご利用いただけます'
end
SubFacility.create do |a|
  a.id = 12
  a.category_id = 4
  a.facility_id = 5
  a.sub_name = '第二コース'
  a.sub_image_id = ''
  a.sub_number = '②'
  a.body = '広々とご利用いただけます'
end

Information.create do |a|
  a.id = 1
  a.facility_id = 1
  a.title = '【中止】「レクリエーション大会」開催中止について'
  a.body = '2020年6月に開催を予定しておりました「レクリエーション大会」について、開催延期の方向で調整してまいりましたが、開催中止を決定しましたのでお知らせします。
  開催をお待ちいただいておりましたお客様においては、度重なるご迷惑をおかけしましたことをお詫び申し上げます。'
end

Information.create do |a|
  a.id = 2
  a.facility_id = 2
  a.title = '【中止】「レクリエーション大会」開催中止について'
  a.body = '2020年6月に開催を予定しておりました「レクリエーション大会」について、開催延期の方向で調整してまいりましたが、開催中止を決定しましたのでお知らせします。
  開催をお待ちいただいておりましたお客様においては、度重なるご迷惑をおかけしましたことをお詫び申し上げます。'
end

Information.create do |a|
  a.id = 3
  a.facility_id = 3
  a.title = '【中止】「レクリエーション大会」開催中止について'
  a.body = '2020年6月に開催を予定しておりました「レクリエーション大会」について、開催延期の方向で調整してまいりましたが、開催中止を決定しましたのでお知らせします。
  開催をお待ちいただいておりましたお客様においては、度重なるご迷惑をおかけしましたことをお詫び申し上げます。'
end

Information.create do |a|
  a.id = 4
  a.facility_id = 4
  a.title = '【中止】「レクリエーション大会」開催中止について'
  a.body = '2020年6月に開催を予定しておりました「レクリエーション大会」について、開催延期の方向で調整してまいりましたが、開催中止を決定しましたのでお知らせします。
  開催をお待ちいただいておりましたお客様においては、度重なるご迷惑をおかけしましたことをお詫び申し上げます。'
end

Information.create do |a|
  a.id = 5
  a.facility_id = 5
  a.title = '【中止】「レクリエーション大会」開催中止について'
  a.body = '2020年6月に開催を予定しておりました「レクリエーション大会」について、開催延期の方向で調整してまいりましたが、開催中止を決定しましたのでお知らせします。
  開催をお待ちいただいておりましたお客様においては、度重なるご迷惑をおかけしましたことをお詫び申し上げます。'
end

Information.create do |a|
  a.id = 6
  a.facility_id = 6
  a.title = '【中止】「レクリエーション大会」開催中止について'
  a.body = '2020年6月に開催を予定しておりました「レクリエーション大会」について、開催延期の方向で調整してまいりましたが、開催中止を決定しましたのでお知らせします。
  開催をお待ちいただいておりましたお客様においては、度重なるご迷惑をおかけしましたことをお詫び申し上げます。'
end