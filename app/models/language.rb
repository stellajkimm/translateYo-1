class Language < ActiveRecord::Base
	
  has_many :fluencies
  has_many :users, through: :fluencies  
end