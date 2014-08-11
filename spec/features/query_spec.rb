require 'rails_helper'

describe "Query features" do

  context "on languages page" do
    let!(:language) {FactoryGirl.create(:language)}
    let!(:query) { FactoryGirl.create(:query, :english => "hello", :language => language) }
    let!(:query2) { FactoryGirl.create(:query, :english => "hey", :language => language) }


    # it "can view a list of queries for a given language" do 
    #   # visit query_path(query.id)
    #   # expect(page).to have_text("Description")
    # end

    it "links to create a comment" do 
      visit query_path(query.id)
      expect(page).to have_link("Add a Comment")
    end

    it "links to back" do 
      visit query_path(query.id)
      expect(page).to have_link("Back", href: language_path(language))
    end

    it "can view a list of queries for a given language" do
      visit language_path(language.id)
      expect(page).to have_text()
    end

    it "can have a working search bar" do
      visit language_path(language.id)
      fill_in('search', :with=> 'hello')
      click_on('Search All Queries')
      expect(page).to have_content('hello')
      expect(page).to_not have_content('hey')
    end
  end
end
