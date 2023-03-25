require 'rails_helper'

RSpec.describe 'Groups', type: :system do
  describe 'Groups' do
    it 'displays all groups' do
      # display a page
      visit groups_path

      # assert the displayed page
      assert_text 'Categories'
    end

    it 'navigates to the new category page' do
      # display a page
      visit groups_path

      # assert the displayed page
      assert_text 'Categories'

      # navigate to the show page
      sleep(1)
      click_on 'New category'

      # assert the displayed page
      sleep(1)
      assert_text 'New category'
    end
  end

  describe 'Creates a new category' do
    it 'Successfully' do
      # display a all groups
      visit root_path

      # display a all groups
      sleep(1)
      click_on 'SIGN UP'

      fill_in 'user[name]', with: 'Tester'
      fill_in 'user[email]', with: 'test@gmail.com'
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'

      sleep(1)
      click_on 'Signup'

      # click on a button from the displayed page
      sleep(1)
      click_on 'New category'

      # fill from to create a category/ group
      sleep(1)
      fill_in 'group[name]', with: 'Shopping'
      fill_in 'group[icon]', with: 'https://img.icons8.com/ios-filled/1x/shopping-cart.png'

      sleep(1)
      click_on 'Add category'
      # assert the displayed page
      sleep(1)
      assert_text 'Shopping'
    end
  end
end
