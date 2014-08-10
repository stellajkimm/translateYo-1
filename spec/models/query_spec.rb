require 'rails_helper'

describe Query do
  let!(:language) { FactoryGirl.create(:language) }
  let!(:query) {FactoryGirl.create(:query, :language => language)}

  context "validates title" do
    it { should validate_presence_of :title }
  end

  context "validates english" do 
    it { should validate_presence_of :english }
  end

end