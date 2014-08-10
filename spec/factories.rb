FactoryGirl.define do
  factory :user do
  	sequence(:username) { |n| "user#{n}"}
    sequence(:email) {|n| "email#{n}@gmail.com" }
    password "password"
  end
  
  factory :fluency do

  end

  factory :language do
    lingua "Spanish"
  end

  factory :query do
  	sequence(:english) {|n| "Hello #{n}"}
  	title "Need help"
  	description "Please help"
    user_id [1,2,3,4].sample
  end

  factory :comment do
  	sequence(:content) {|n| "Here is comment no. #{n}."}
    commentable_id 1
    commentable_type "Query"
  end
  
end
