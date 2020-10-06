class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nick_name, presence: true, uniqueness: {case_sensitive: true}

  has_one :profile
  # has_one :comment
  has_many :credit_cards
  has_many :destinations
  # has_many :purchase_histories
  # has_many :items

end
