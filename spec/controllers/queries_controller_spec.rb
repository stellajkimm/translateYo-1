require 'rails_helper'

describe QueriesController, :type => :controller do
  let(:language){FactoryGirl.create :language}
  let(:query){FactoryGirl.create :query}

  context "POST #create" do 
    it "increments the Query count" do
      get :new, language_id: language.id
      expect{Query.create(:title => "Test", :english => "hey", other: "bonjour", :language_id => 2)}.to change{Query.count}.by(1)
    end
  end
end