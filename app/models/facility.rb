class Facility < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :customers,  through: :events
  has_many :sub_facilities, dependent: :destroy
  has_many :categories,  through: :sub_facilities
  has_many :favorites
  has_many :facility_comments
  has_many :informations
  attachment :facility_image
  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
  #バリデーション
  with_options presence: true do
    validates :facility_name, length: {minimum: 1}
    validates :date
    validates :facility_phone
    validates :address
    validates :lending_time
    validates :introduction, length: {minimum: 1, maximum: 50,}
  end
  validates :use_status, inclusion: {in: [true, false]}
end
