require 'rails_helper'

describe QueriesController, :type => :controller do
  let(:language){Language.create(:lingua => "French")}
  let(:query){Query.create(:title => "stupid", :english => "hey", :other =>"bitch", :language_id => 2)}

 


  context "GET #new" do 
    it "assigns new query to @query" do
      get :new, language_id: language.id
      expect(@query).to eq(Query.last)
    end

  end
end