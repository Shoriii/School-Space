class SubFacility < ApplicationRecord
  belongs_to :facility
  belongs_to :category
  attachment :sub_image
#バリデーション
with_options presence: true do
  validates :sub_name, length: {minimum: 1}
  validates :category_id
  validates :sub_number
  validates :facility_id
  validates :body, length: {minimum: 1, maximum: 50,}
end
end
