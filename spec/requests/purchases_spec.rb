require 'rails_helper'

RSpec.describe '/purchases', type: :request do
  let(:user) { User.create(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  let(:group) { Group.create(user:, name: 'Shopping', icon: 'icon_here') }

  let(:valid_attributes) do
    { author: user, name: 'Food', amount: 22 }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Purchase.create! valid_attributes
      get group_purchases_url(group)
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      purchase = Purchase.create! valid_attributes
      get group_purchase_url(group, purchase)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_group_purchase_url(group)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Purchase' do
        expect do
          Purchase.create! valid_attributes
        end.to change(Purchase, :count).by(1)
      end
    end
  end
end
