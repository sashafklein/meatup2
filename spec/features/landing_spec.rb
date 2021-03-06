require 'rails_helper'

describe 'Landing' do

  describe "not signed in" do
    it "redirected to sign up page" do
      visit root_path
      expect( current_path ).to eq new_user_session_path
    end
  end

  describe "signed in" do
    it "redirects to their profile page" do
      user = User.create(email: 'email@fake.com', password: 'password')
      sign_in(user)
      visit root_path
      expect( current_path ).to eq user_path(user)
    end
  end
end