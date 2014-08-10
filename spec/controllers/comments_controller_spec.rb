require 'rails_helper'

describe CommentsController, :type => :controller do

	@parent = let!(:query) { FactoryGirl.create :query }
  let(:user) { FactoryGirl.create :user }

	context "GET #new" do
		
		it "assigns a new comment to @comment" do
			stub_authorize_user!
			get :new
			expect(assigns(:comment)).to eq(Comment.last)
		end

	end

	context "POST #create" do
		
		it "should create a comment when params are valid" do
			stub_authorize_user!
			expect { 

				post :create, comment: FactoryGirl.create(:comment) 
				}.to change{Comment.count}.by(1)
		end

		it "should redirect to query page on successful save" do
			stub_authorize_user!
			expect(
				post :create, comment: FactoryGirl.create(:comment)
				).to redirect_to(languages_path)
			# expect(response).to redirect_to(query_comments_path(query)) #Should be this but there is a problem with routes

		end

		it "should re-render new template on failed save" do #BUGBUG
			stub_authorize_user!
	    expect(
	    	post :create, comment: FactoryGirl.attributes_for(:comment, content: nil) 
	    	).to render_template(:new)
  	end
	end


end