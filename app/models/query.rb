class Query < ActiveRecord::Base

  has_many :comments, :as => :commentable, :dependent => :destroy
  # validates :title, presence: true

  belongs_to :language
end