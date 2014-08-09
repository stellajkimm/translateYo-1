FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "email#{n}@gmail.com" }
    password "password"
  end

  # factory :post do
  #   sequence(:title) { |n| "New post#{n}" }
  #   content "A great post."
  # end
end
