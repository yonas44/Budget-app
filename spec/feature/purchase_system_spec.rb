require 'rails_helper'

RSpec.describe 'Purchases', type: :system do
  describe 'Creates a new purchase' do
    it 'Successfully' do
      # display a all purchases
      visit root_path

      # display a all purchases
      sleep(1)
      click_on 'SIGN UP'

      fill_in 'user[name]', with: 'Tester'
      fill_in 'user[email]', with: 'test@gmail.com'
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'

      sleep(1)
      click_on 'Next'

      # click on a button from the displayed page
      sleep(1)
      click_on 'New category'

      # fill from to create a purchase/ group
      sleep(1)
      fill_in 'group[name]', with: 'Shopping'
      fill_in 'group[icon]', with: 'https://img.icons8.com/ios-filled/1x/shopping-cart.png'

      sleep(1)
      click_on 'Add category'
      # assert the displayed page

      sleep(1)
      click_on 'Shopping'

      sleep(1)
      click_on 'New purchase'

      sleep(1)
      fill_in 'purchase[name]', with: 'Shoe'
      fill_in 'purchase[reciever]', with: 'City mall'
      fill_in 'purchase[amount]', with: '24'
      fill_in 'purchase[description]', with: 'I bought the shoe I really wanted to buy last month'
      select 'Shopping', from: :purchase_group

      sleep(1)
      click_on 'Add purchase'

      sleep(1)
      assert_text 'Shoe'
    end
  end
end
