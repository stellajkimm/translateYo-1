require 'rails_helper'

describe Comment do
	let(:query) {FactoryGirl.create(:query)}
	context "validations" do
		it { should validate_presence_of :content }
	end	

	context "query" do
		it "returns query if defined" do
			# expect(assigns(:query)).to eq(@query)
		end
	end

end