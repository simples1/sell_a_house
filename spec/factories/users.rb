FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "example#{n}@ww.com" }
  	password "123456789"
  	first_name "john"
  	last_name "smith"
  end
end