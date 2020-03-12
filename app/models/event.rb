class Event < ApplicationRecord
  belongs_to :customer
  belongs_to :facility
  #enum設定
  enum title: { 予約済: 0, キャンセル済: 1 }
end
