require 'rails_helper'

describe Comment do
	let!(:language) { FactoryGirl.create(:language) }
	let!(:query) {FactoryGirl.create(:query, :language => language)}
	let!(:comment) { FactoryGirl.create(:comment, :commentable => query)}

	context "validations" do
		it { should validate_presence_of :content }
	end	

	context "comment votes" do
		it "should be 0 up_votes by default" do
			expect(comment.up_vote).to eq(0)
		end

		it "should be 0 down_votes by default" do
			expect(comment.down_vote).to eq(0)
		end
	end

	it "when commentable is defined, returns @query" do
		# expect(comment.query).to_not eq(nil)
		expect(comment.commentable).to eq(query)
	end
end