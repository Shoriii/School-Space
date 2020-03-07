class Facility < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :customers,  through: :events
  belongs_to :category
end
