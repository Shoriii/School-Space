class Category < ApplicationRecord
  has_many :facilities, dependent: :destroy
end
