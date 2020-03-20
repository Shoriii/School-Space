class Category < ApplicationRecord
  has_many :sub_facilities, dependent: :destroy
  has_many :facilities, through: :sub_facilities
  #バリデーション追加
  validates :category_name, presence: true

  enum category_status: {"無効": false, "有効": true}
end
