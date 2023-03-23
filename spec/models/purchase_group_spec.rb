require 'rails_helper'

RSpec.describe PurchaseGroup, type: :model do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  let(:group) { Group.create!(user:, name: 'Shopping', icon: 'icon-here') }

  let(:purchase) { Purchase.create!(author: user, name: 'Shopping', amount: 25) }

  let(:valid_attributes) do
    { group:, purchase: }
  end

  describe 'PurchaseGroup model' do
    context 'with valid attributes' do
      it 'successfully creates a purchase_group' do
        expect(PurchaseGroup.create!(valid_attributes)).to be_valid
      end
    end
  end
end
