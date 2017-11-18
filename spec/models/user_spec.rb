require 'rails_helper'

RSpec.describe User, type: :model do
	describe "can create Users" do
		before do
			@user = FactoryBot.create(:user) 
			@user2 = FactoryBot.build(:user, first_name: nil, last_name: nil) 

		end

		it "can be created" do
			expect(@user).to be_valid
		end

		it "validate first_name and last_name when creating user" do
			expect(@user2).to_not be_valid
		end
	end
end
