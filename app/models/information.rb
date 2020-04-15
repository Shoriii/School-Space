class Information < ApplicationRecord
  belongs_to :facility
  validates :title, presence: true
  validates :body, presence: true
  def new_arrival?
    created_at + 1.week > Date.today
  end
end
