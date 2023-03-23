require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create!(name: 'Another_user', email: 'test2@gmail.com', password: '123123') }

  let(:valid_attributes) do
    { user:, name: 'Shopping', icon: 'icon-here' }
  end

  describe 'Group model' do
    context 'with valid attributes' do
      it 'successfully creates a group' do
        expect(Group.create!(valid_attributes)).to be_valid
      end
    end
  end
end
