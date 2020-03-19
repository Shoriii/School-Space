class Facility < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :customers,  through: :events
  has_many :sub_facilities, dependent: :destroy
  has_many :categories,  through: :sub_facilities
  attachment :facility_image
end
