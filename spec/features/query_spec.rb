require 'rails_helper'

describe "Query features" do 

  context "on languages page" do 
    let!(:language) {FactoryGirl.create(:language)}
    let!(:query) { FactoryGirl.create(:query, :language => language) }

    it "can view a list of queries for a given language" do 
      visit language_path(language.id)
      expect(page).to have_text()
      
    end

  end
end