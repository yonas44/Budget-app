require 'rails_helper'

RSpec.describe '/purchases', type: :request do

  let(:user) { User.create(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }
  
  let(:group) { Group.create(user: , name: 'Shopping', icon: 'icon_here') }

  let(:valid_attributes) do
    { author: user, name: 'Food', amount: 22}
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
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
          post group_purchases_url(group), params: { purchase: valid_attributes }
        end.to change(Purchase, :count).by(1)
      end

      it 'redirects to the created purchase' do
        post group_purchases_url(group), params: { purchase: valid_attributes }
        expect(response).to redirect_to(purchase_url(Purchase.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Purchase' do
        expect do
          post group_purchases_url(group), params: { purchase: invalid_attributes }
        end.to change(Purchase, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post group_purchases_url(group), params: { purchase: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested purchase' do
        purchase = Purchase.create! valid_attributes
        patch purchase_url(purchase), params: { purchase: new_attributes }
        purchase.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the purchase' do
        purchase = Purchase.create! valid_attributes
        patch purchase_url(purchase), params: { purchase: new_attributes }
        purchase.reload
        expect(response).to redirect_to(purchase_url(purchase))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        purchase = Purchase.create! valid_attributes
        patch purchase_url(purchase), params: { purchase: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested purchase' do
      purchase = Purchase.create! valid_attributes
      expect do
        delete purchase_url(purchase)
      end.to change(Purchase, :count).by(-1)
    end

    it 'redirects to the purchases list' do
      purchase = Purchase.create! valid_attributes
      delete purchase_url(purchase)
      expect(response).to redirect_to(purchases_url)
    end
  end
end
