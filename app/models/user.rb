class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :communities

  has_many :comments

  has_many :networks


  has_many :answers, through: :comments

  # has_many :members, through: :communities,  class_name: 'User', foreign_key: 'member_id'

  has_many :memberships
  has_many :communities, through: :memberships

  has_many :save_posts

  
  has_many :user_roles
  has_many :roles, through: :user_roles

  has_many :followed_relationships, class_name: 'Relationship', foreign_key: 'followed_id'
  has_many :follower_relationships, class_name: 'Relationship', foreign_key: 'follower_id'

  has_many :followers, through: :followed_relationships, class_name: 'User'

  has_many :followed, through: :follower_relationships, class_name: 'User'


end
