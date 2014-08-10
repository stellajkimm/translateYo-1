require 'rails_helper'

describe "Query features" do 

  context "on languages page" do 
    let!(:language) {FactoryGirl.create(:language)}
    let!(:query) { FactoryGirl.create(:query, :language => language) }

    it "can view a list of queries for a given language" do 
      visit query_path(query.id)
      expect(page).to have_text("Description")
    end

    it "links to create a comment" do 
      visit query_path(query.id)
      expect(page).to have_link("Add a Comment")
    end

    it "links to back" do 
      visit query_path(query.id)
      expect(page).to have_link("Back")
    end

  end
end