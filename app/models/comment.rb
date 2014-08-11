class Comment < ActiveRecord::Base
	# has_ancestry
	# attr_accessor :content, :parent_id, :commentable_id, :commentable_type
	# belongs_to :commentable, :polymorphic => true

	# has_many :votes

	 belongs_to :commentable, :polymorphic => true
	 # belongs_to :user
 	 has_many :comments, :as => :commentable
  
  def query
    return @query if defined?(@query)
    @query = commentable.is_a?(Query) ? commentable : commentable.query
  end

  validates :content, presence: true

end