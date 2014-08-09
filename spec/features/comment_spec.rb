require 'rails_helper'

describe 'Comment features' do
	context "on new comments page" do
		let(:query) { FactoryGirl.create(:query) }
		it "can see a form to write a new comment" do
			visit new_query_comment_path(query)
		end
	end

	# it "user can see comments on queried translation" do
	# 	pending
	# end

	# context "when logged in" do
	# 	it "user can make comments on a query by clicking comment link" do
	# 		pending
 #  	end

 #  	it "user can make comments on comments of a query by clicking nested comment link" do
 #  		pending
 #  	end
	# end

	# context "when not logged in" do
	# 	it "user can't make comments on a query after clicking comment link" do
	# 		pending
	# 	end
	# end
end