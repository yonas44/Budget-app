class Purchase < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :purchase_groups, dependent: :destroy
  has_many :groups, through: :purchase_groups

  validates :name, :amount, presence: true
  validates :amount, comparison: { greater_than_or_equal_to: 0 }
end
