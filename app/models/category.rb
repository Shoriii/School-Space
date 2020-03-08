class Category < ApplicationRecord
  has_many :facilities, dependent: :destroy
  #バリデーション追加
  validates :category_name, presence: true

  enum category_status: {"無効": false, "有効": true}
end
