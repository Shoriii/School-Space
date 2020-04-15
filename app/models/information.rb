class Information < ApplicationRecord
  belongs_to :facility
  def new_arrival?
    created_at + 1.week > Date.today
  end
  validates :title, presence: true
  validates :body, presence: true
end
