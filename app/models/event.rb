class Event < ApplicationRecord
  belongs_to :customer
  belongs_to :facility
  #enum設定
  enum title: { 予約済: 0, キャンセル済: 1 }
  #バリデーション
  with_options presence: true do
    validates :customer_id
    validates :facility_id
    validates :number
    validates :title
    validates :people
    validates :start_at
    validates :end_at
  end
end
