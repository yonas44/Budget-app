class Group < ApplicationRecord
  belongs_to :user
  has_many :purchase_groups, dependent: :destroy
  has_many :purchases, through: :purchase_groups

  def ordered_purchases
    purchases.order(created_at: :desc)
  end
end
