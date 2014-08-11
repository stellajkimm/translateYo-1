require 'rails_helper'

describe CommentsController, :type => :controller do

	let!(:query) { FactoryGirl.create :query }
  let(:user) { FactoryGirl.create :user }
  # let!(:comment) {FactoryGirl.create :comment}

	context "GET #new" do

		it "assigns a new comment to @comment" do
			stub_authorize_user!
			get :new, query_id: query.id
			expect(assigns(:comment)).to be_kind_of(Comment)
		end

	end

	context "POST #create" do
		render_views

		it "should create a comment when params are valid" do
			stub_authorize_user!
			expect {

				post :create, query_id: query.id, comment: { content: 'my comment' }
				}.to change{Comment.count}.by(1)
		end

		it "should redirect to query page on successful save" do
			stub_authorize_user!
			expect(
				post :create, query_id: query.id, comment: { content: 'my comment' }
				).to redirect_to(query_path(query.id))
			# expect(response).to redirect_to(query_comments_path(query)) #Should be this but there is a problem with routes

		end

		# it "should notify of redirect to new template on failed save" do #BUGBUG
		# 	stub_authorize_user!
		# 	post :create, query_id: query.id, comment: { content: nil }
	 #    expect(response.body).to eq("<html><body>You are being <a href=\"http://test.host/languages\">redirected</a>.</body></html>")
  # 	end
	end

	context "#up_vote" do
	end


end
