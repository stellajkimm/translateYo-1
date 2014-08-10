require 'rails_helper'
describe 'Comment features' do

	context "on new comment page" do

		let!(:language) {FactoryGirl.create(:language)}
		let!(:query) { FactoryGirl.create(:query, :language => language) }

		it "can see a form to write a new comment" do
			stub_authorize_user!
			visit new_query_comment_path(query)
			expect(page).to have_text("Content")
		end

		it "can see a form with button 'add comment'" do
			stub_authorize_user!
			visit new_query_comment_path(query)
			expect(page).to have_button("add comment")
		end

		it "can create a comment with form" do #BUGBUG
			stub_authorize_user!
			expect{
				visit new_query_comment_path(query)
				fill_in 'Content', with: 'Here is my comment!'
				click_button 'add comment'
				}.to change{Comment.count}.by(1)
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
