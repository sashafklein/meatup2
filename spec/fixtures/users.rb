FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "whatever#{n}@email.com" }
    password 'password'
  end
end
