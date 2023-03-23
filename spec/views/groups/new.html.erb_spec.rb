require 'rails_helper'

RSpec.describe 'groups/new', type: :view do
  before(:each) do
    assign(:group, Group.new(
                     name: 'MyString',
                     icon: 'MyString',
                     user: nil
                   ))
  end

  it 'renders new group form' do
    render
    expect(response).to include('MyString')
  end
end
