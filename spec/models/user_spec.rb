require 'rails_helper'

RSpec.describe User, type: :model do
	describe "can create Users" do
		before do
			@user = User.create(email: "ww@ww.com", first_name: "jj", last_name: "pp", password: "123456789")
			@user2 = User.create(email: "ww@ww.com", password: "123456789")
		end

		it "can be created" do
			expect(@user).to be_valid
		end

		it "validate first_name and last_name when creating user" do
			expect(@user2).to_not be_valid
		end
	end
end
