require 'rails_helper'

RSpec.describe '/groups', type: :request do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  let(:valid_attributes) do
    { user:, name: 'Shopping', icon: 'Icon_here' }
  end

  let(:invalid_attributes) do
    { user:, name: 'Shopping', icon: '' }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Group.create! valid_attributes
      get groups_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      group = Group.create! valid_attributes
      get group_purchases_url(group)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_group_url
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Group' do
        expect do
          Group.create! valid_attributes
        end.to change(Group, :count).by(1)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Group' do
        expect do
          post groups_url, params: { group: invalid_attributes }
        end.to change(Group, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post groups_url, params: { group: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
