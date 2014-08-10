require 'spec_helper'
describe "Navigation Bar" do
  before(:each) do
    @spanish = Language.create(lingua: "spanish", flag: "http://www.enchantedlearning.com/europe/spain/flag/Flagbig.GIF" )
    end

  describe "User can see the navigation bar" do
    it "in home page" do
      visit root_path
      page.has_css?('nav[role="navigation"]')
    end

    it "in language page" do
      visit language_path(@spanish)
      page.has_css?('nav[role="navigation"]')
    end

    it "redirects to the homepage when clicking on 'TranslateYo!'" do
      visit language_path(@spanish)
      click_link("TranslateYo!")
      expect(page).to have_selector('div#container')
    end
  end
end

describe "Footer" do
  before(:each) do
    @spanish = Language.create(lingua: "spanish", flag: "http://www.enchantedlearning.com/europe/spain/flag/Flagbig.GIF" )
    end

  describe "User can see the footer" do
    it "in all pages" do
      visit root_path
      page.has_css?('nav[role="footer"]')
    end
    it "in language page" do
      visit root_path
      visit language_path(@spanish)
      page.has_css?('nav[role="footer"]')
    end
  end

  describe "User can visit a language page" do
    it "by clicking on a flag" do
      visit root_path
      click_link(@spanish.lingua)
      expect(page).to have_content(@spanish.lingua)
    end
  end
end
