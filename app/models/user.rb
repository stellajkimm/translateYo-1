class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :queries
  has_many :fluencies
  has_many :languages, through: :fluencies
end
