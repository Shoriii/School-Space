class SubFacility < ApplicationRecord
  belongs_to :facility
  belongs_to :category
  attachment :sub_image
  #enum設定
  #enum sub_number: { ①: 0, ②: 1 , ③: 2, ④: 3 }
end
