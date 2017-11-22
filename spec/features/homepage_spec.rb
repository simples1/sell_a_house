require 'rails_helper'

describe 'navigate' do
  describe 'homepage' do

    before do
	    @user =  FactoryBot.create(:user) 
	    login_as(@user, :scope => :user)
  	end

    it 'can be reached homepage successfully when logged in' do
      visit root_path
      expect(page).to have_content("Welcome")
    end
  end
end