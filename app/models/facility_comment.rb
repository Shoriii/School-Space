class FacilityComment < ApplicationRecord
  belongs_to :customer
  belongs_to :facility
  validates :comment, presence: true
end
