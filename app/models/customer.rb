class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_KATAKANA = /\A[\p{katakana}\p{blank}ー－]+\z/
    VALID_TELPHONE = /\A\d{10,11}\z/  # 電話番号
    with_options presence: true do
      validates :last_name
      validates :first_name
      validates :kana_last_name,  format: {
                                    with: VALID_KATAKANA,
                                    message: 'はカタカナで入力してください。'
                                  }
      validates :kana_first_name, format: {
                                    with: VALID_KATAKANA,
                                    message: 'はカタカナで入力してください。'
                                  }
      validates :telephone,             format: {
                                    with: VALID_TELPHONE,
                                    message: "の入力が間違っています（ハイフンなしの数字）"
                                  }
      validates :email,           format: {
                                    with: VALID_EMAIL_REGEX
                                  }
    end
  has_many :events, dependent: :destroy
  has_many :facilities,  through: :events
  has_many :favorites
  has_many :facility_comments
end
