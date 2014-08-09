class Query < ActiveRecord::Base
  has_many :comments, :as => :commentable, :dependent => :destroy
  validates :title, :english, presence: true
  belongs_to :language
end