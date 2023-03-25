class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :confirmable unless Rails.env == 'test'
  has_many :purchases, dependent: :destroy
  has_many :groups, dependent: :destroy

  validates :name, presence: true
end
