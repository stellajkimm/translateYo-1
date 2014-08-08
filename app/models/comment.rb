class Comment < ActiveRecord::Base
	has_ancestry
	attr_accessor :content, :parent_id, :commentable_id, :commentable_type
	belongs_to :commentable, :polymorphic => true
end