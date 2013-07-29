FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "foo#{n}@bar.com" }
    password "foobar"
    password_confirmation "foobar"
    cash 200000
  end

  factory :stock do
    quantity 200
    starting_price 32.25
    symbol "AAPL"
  end
end