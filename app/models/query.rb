class Query < ActiveRecord::Base
  has_many :comments, :as => :commentable, :dependent => :destroy

  belongs_to :language
end