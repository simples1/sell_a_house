require 'rails_helper'

describe "Post a house for sell" do 
  before do
    @user =  FactoryBot.create(:user) 
    login_as(@user, :scope => :user)
  end

  it "can navigate to new house form page" do 
    visit(root_path)
    click_link("sell_a_house")

    expect(page).to have_content("New")
    expect(page).to have_current_path(new_houses_path())
  end

  it "will post a house" do
    visit(new_houses_path())

    select('Apartment', :from => 'house[house_type]')
    attach_file('Image',  File.join(Rails.root, "/app/assets/images/house1.jpg"))
    fill_in "house[rooms]", with: 3
    fill_in "house[price]", with: 100000
    click_button('Submit House')

    expect(page).to have_content("Success!")
  end

	it "will show posted house in the listing page" do
		visit(new_houses_path())

		select('Apartment', :from => 'house[house_type]')
		attach_file('Image',  File.join(Rails.root, "/app/assets/images/house1.jpg"))
		fill_in "house[rooms]", with: 3
		fill_in "house[price]", with: 100000
		click_button('Submit House')

		expect(page.find("#houses")).to have_content(100000)
	end
end