require 'rails_helper'



describe Comment do
  it { should belong_to :commentable }
  it { should have_many :comments }
end


# describe Comment
# 	context "validations" do
		
# 	end	

# 	context "#" do
		
# 	end

# end