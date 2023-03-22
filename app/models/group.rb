class Group < ApplicationRecord
  belongs_to :user
  has_many :purchase_groups, dependent: :destroy
  has_many :purchases, through: :purchase_groups

  validates :name, :icon, presence: true

  def ordered_purchases
    purchases.order(created_at: :desc)
  end

  def total_purchases
    total = 0
    purchases.each do |purchase|
      total += purchase.amount
    end
    total
  end
end
