FactoryGirl.define do
  factory :user do
  	sequence(:username) { |n| "user#{n}"}
    # sequence(:email) {|n| "email#{n}@gmail.com" }
    password "password"
  end
  
  factory :fluency do

  end

  factory :language do

  end

  factory :query do
  	sequence(:english) {|n| "Hello #{n}"}
  	title "Need help"
  	description "Please help"
  end

  factory :comment do
  	sequence(:content) {|n| "Here is comment no. #{n}."}
  end
  
end
