class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :blogs
  has_many :comments
  has_many :likes
  has_many :teams, through: :users
end
