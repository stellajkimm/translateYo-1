require 'rails_helper'

describe CommentsController, :type => :controller do
	# let!(:query) {FactoryGirl.create :query}
	let!(:comment) { FactoryGirl.create :comment }

	context "GET #new" do

		it "assigns a new comment to @comment" do
			get :new
			expect(assigns(:comment)).to eq(@comment)
		end

		# it "redirects to render new comment page" do
		# 	get :new
		# 	expect(response).to render_template(new_query_comment_path(:comment))
		# end

	end

	context "POST #create" do
		it "should pass params to content" do
			post :create
			post :create, :subject => {:title => "Foo"}
    assigns[:subject].title.should == "Foo"
			# comment = FactoryGirl.create(:comment)
			# expect { comment }.to change{Comment.count}.by(1)
		end

		it "doesn't create a comment when params are invalid" do
			pending
		end
	end


end