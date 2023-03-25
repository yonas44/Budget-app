require 'rails_helper'

RSpec.describe 'purchases/index', type: :view do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  before(:each) do
    assign(:group, Group.create!(user:, name: 'Shopping', icon: 'icon'))
  end

  it 'renders a list of purchases' do
    render
    expect(response).to include('There are no purchases')
  end
end
