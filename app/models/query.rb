class Query < ActiveRecord::Base
  # has_many :comments, :as => :commentable, :dependent => :destroy
  has_many :comments, :as => :commentable
  belongs_to :language
end