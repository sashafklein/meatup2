require 'rails_helper'

describe 'Authentication' do

  describe "sign in" do
    it "is linked to on the landing page" do
      user = User.create(email: 'blah@email.com', password: 'password')
      visit root_path
      
      expect( page ).to have_content 'Sign in' # On sign-in page
      
      fill_in 'Email', with: user.email
      fill_in "Password", with: user.password
      click_button 'Sign in'
      
      expect( current_path ).to eq user_path(user)
    end
  end

  describe 'registration' do
    it "allows new users to register" do
      visit root_path
      
      click_link 'Sign up'
      fill_in 'Email', with: 'myfake@email.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'

      fill_in 'First name', with: 'John'
      fill_in 'Last name', with: 'Doe'
      click_button "Sign up"

      expect( current_path ).to include '/users/'
      expect( page ).to have_content "Welcome! You have signed up successfully."
    end
  end
end