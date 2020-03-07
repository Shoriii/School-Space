class Category < ApplicationRecord
  has_many :facilities, dependent: :destroy
  #バリデーション追加
  validates :category_name, presence: true
end
