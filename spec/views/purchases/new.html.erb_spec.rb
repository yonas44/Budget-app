require 'rails_helper'

RSpec.describe 'purchases/new', type: :view do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  let(:group) { Group.create!(user:, name: 'Shopping', icon: 'icon') }

  before(:each) do
    assign(:group, group)
    assign(:purchase, Purchase.create!(author: user, name: 'Shoe', amount: 5))
    assign(:groups, [group.name, group.id])
  end

  it 'renders new purchase form' do
    render
    expect(response).to include('Add purchase')
  end
end
