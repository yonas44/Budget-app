require 'rails_helper'

RSpec.describe 'purchases/show', type: :view do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  let(:group) { Group.create!(user:, name: 'Shopping', icon: 'icon') }

  let(:purchase) { Purchase.create!(author: user, name: 'Shoe', amount: 5) }

  before(:each) do
    assign(:group, group)
    assign(:purchase, purchase)
  end

  it 'renders attributes in <p>' do
    render
    expect(response).to include('Shoe')
  end
end
