class FacilityComment < ApplicationRecord
  belongs_to :customer
  belongs_to :facility
  validates :comment, presence: true
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
end
