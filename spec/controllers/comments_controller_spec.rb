require 'rails_helper'

describe CommentsController, :type => :controller do

	let!(:query) { FactoryGirl.create :query }

	context "GET #new" do

		it "assigns a new comment to @comment" do
			get :new
			expect(assigns(:comment)).to eq(Comment.last)
		end

	end

	context "POST #create" do
		subject { FactoryGirl.create(:comment) }
		
		it "should create a comment when params are valid" do
			post :create
			expect { subject }.to change{Comment.count}.by(1)
		end

		it "should redirect to query page on successful save" do
			post :create
			expect(subject).to redirect_to(queries_path)
		end

		it "should re-render new template on failed save" do
			post :create
			comment = FactoryGirl.build(:comment, content: nil)
	    expect(response).to render_template("comments/new")
	    # assigns[:subject].should be_new_record
	    # flash[:notice].should be_blank
	    # response.should render_template(:new)
  	end
	end


end