require 'rails_helper'

RSpec.describe Purchase, type: :model do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  let(:valid_attributes) do
    { author: user, name: 'Shopping', amount: 25 }
  end

  describe 'Purchase model' do
    context 'with valid attributes' do
      it 'successfully creates a purchase' do
        expect(Purchase.create!(valid_attributes)).to be_valid
      end
    end
  end
end
