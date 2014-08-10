require 'rails_helper'

describe CommentsController, :type => :controller do

	let!(:query) { FactoryGirl.create :query }


	context "GET #new" do
		
		it "assigns a new comment to @comment" do
			stub_authorize_user!
			get :new
			expect(assigns(:comment)).to eq(Comment.last)
		end

	end

	context "POST #create" do
		subject { FactoryGirl.create(:comment) }
		
		it "should create a comment when params are valid" do
			stub_authorize_user!
			post :create
			expect { subject }.to change{Comment.count}.by(1)
		end

		it "should redirect to query page on successful save" do
			stub_authorize_user!
			post :create
			expect(subject).to redirect_to(queries_path)
		end

		it "should re-render new template on failed save" do #BUGBUG
			stub_authorize_user!
			post :create
			comment = FactoryGirl.build(:comment, content: nil)
	    expect(response).to render_template("comments/new")
  	end
	end


end